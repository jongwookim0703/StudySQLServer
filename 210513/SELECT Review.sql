-- ������ ��ȸ
SELECT * FROM userTbl;

-- ������ ��ȸ ���͸�
SELECT * FROM userTbl
 WHERE name in ('�����', '������')

SELECT * FROM userTbl
 WHERE name LIKE '��%'

SELECT * FROM userTbl
 WHERE name LIKE '%��%'

SELECT addr FROM userTbl
SELECT name FROM userTbl

-- Ư�� ���̺� ���ڵ� ����Ȯ��
SELECT COUNT(*) FROM usertbl

-- Ű�� 180�̻��̰� ����⵵�� 1970 �����λ��
SELECT * FROM userTbl
 WHERE height >180 AND birthYear >1970

 -- Ű�� 180�̻��̰ų� ����⵵�� 1970 �����λ��
SELECT * FROM userTbl
 WHERE height >180 OR birthYear >1970

 -- ����� ���̺��� Ű�� 180�̻��̰�
-- ����⵵�� 1970 ������ ����� 
-- ���̵�, �̸�, Ű�� ��ȸ�ϼ���
SELECT userID, name, height From userTbl
 WHERE height > 180 AND birthYear >1970

 -- ����⵵ ������(��������) �����ؼ� ��ȸ
 SELECT * FROM userTbl
  ORDER BY birthYear desc

-- SELECT INTO
-- userTbl_new ��� ���̺��� ������
-- �ַ� ���̺� ����� �� �� ��� (PK Ű������ ����ȵ�)
SELECT * INTO userTbl_new FROM userTbl

SELECT * FROM userTbl_new

-- ����� Į���� ���ؼ� ����� �� �ִ�
SELECT userID, name, addr INTO userTbl_bacKup FROM userTbl
SELECT * FROM userTbl_bacKup

-- ����� �ּҰ� �����λ���� ���
SELECT userID, name, addr INTO userTbl_bacKup2 FROM userTbl
 WHERE addr = '����'
SELECT * FROM userTbl_bacKup2
