create or replace procedure maxium
    (a in integer, b in integer, c out integer)
as
begin
if (a > b) then c :=a;
end if;
if (b >= a) then c:=b;
end if;
end;
/

CREATE OR REPLACE PROCEDURE SCOTT.transfer_account
 (sid  IN  VARCHAR2, rid in account.id%TYPE
 ,money IN account.balance%TYPE, error_cd IN out number,
                                  error_msg out varchar2)
IS
  vlog t_log.contents%TYPE;
  vbalance account.balance%TYPE;
  v_id account.id%TYPE;
BEGIN
	DBMS_OUTPUT.put_line('test cd ' ||error_cd);
  vlog := sid || ' 계좌에서' || rid || ' 계좌로 ' || money || '를 출금시도합니다';
  insert into t_log values (log_seq.nextval, vlog);
  SAVEPOINT t1;
  SELECT balance into vbalance
  from account where id = sid;
  if vbalance < money then
  error_cd := -1;
   error_msg := '거래 잔액이 충분하지않습니다.';
 return;
  end if;
  update account set balance=balance-money
  where id = sid;
  update account set balance=balance+money
  where id = rid;
  vlog := sid || ' 계좌에서' || rid || ' 계좌로 ' || money || '를 출금완료하였습니다';
  insert into t_log values (log_seq.nextval, vlog);
   error_cd := 1;
   error_msg := '거래가 완료되었습니다.';
  commit;
 EXCEPTION
  WHEN NO_DATA_FOUND THEN
    ROLLBACK TO  t1;
    COMMIT;
    error_cd := 'failure';
    error_msg := '해당계좌가 존재하지 않습니다.';
  WHEN OTHERS THEN
    ROLLBACK TO  t1;
    COMMIT;
    error_cd := 'failure';
    error_msg := '기타에러가 발생했습니다.';
END;


