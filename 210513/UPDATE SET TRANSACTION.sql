-- UPDATE
-- WHERE���� ���� ���������� !!
-- Ʈ����� ���� (1ȸ��)
BEGIN TRANSACTION

-- testTbl ���̺��� Id=2�� userName�� ��������� �ٲٰڴ�
UPDATE testTbl
   SET userName = '�����'
      ,addr = '�λ�'
 WHERE Id = 2

SELECT * FROM testTbl
COMMIT
ROLLBACK

-- ������ ���θ� �����ϰ� 1���� �ٽý��� (�߾Ⱦ�)
TRUNCATE TABLE testTbl   