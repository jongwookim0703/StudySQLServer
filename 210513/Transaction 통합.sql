-- ����
BEGIN TRANSACTION

SELECT * FROM testTbl

-- ������ �Է�
INSERT INTO testTbl VALUES('�ֿ��', 'ĳ��')

-- ������ ����
UPDATE testTbl
   SET userName = '������'
     , addr = '����'
 WHERE id = 3

 -- ������ ����
 DELETE FROM testTbl WHERE userName = 'ȫ���'


COMMIT
ROLLBACK