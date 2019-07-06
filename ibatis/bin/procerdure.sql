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
  vlog := sid || ' ���¿���' || rid || ' ���·� ' || money || '�� ��ݽõ��մϴ�';
  insert into t_log values (log_seq.nextval, vlog);
  SAVEPOINT t1;
  SELECT balance into vbalance
  from account where id = sid;
  if vbalance < money then
  error_cd := -1;
   error_msg := '�ŷ� �ܾ��� ��������ʽ��ϴ�.';
 return;
  end if;
  update account set balance=balance-money
  where id = sid;
  update account set balance=balance+money
  where id = rid;
  vlog := sid || ' ���¿���' || rid || ' ���·� ' || money || '�� ��ݿϷ��Ͽ����ϴ�';
  insert into t_log values (log_seq.nextval, vlog);
   error_cd := 1;
   error_msg := '�ŷ��� �Ϸ�Ǿ����ϴ�.';
  commit;
 EXCEPTION
  WHEN NO_DATA_FOUND THEN
    ROLLBACK TO  t1;
    COMMIT;
    error_cd := 'failure';
    error_msg := '�ش���°� �������� �ʽ��ϴ�.';
  WHEN OTHERS THEN
    ROLLBACK TO  t1;
    COMMIT;
    error_cd := 'failure';
    error_msg := '��Ÿ������ �߻��߽��ϴ�.';
END;


