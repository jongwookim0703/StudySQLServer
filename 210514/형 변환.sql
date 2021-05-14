-- �� ��ȯ
-- CAST (���̾�)
SELECT CAST( AVG(CAST(amount AS float)) AS DECIMAL(7,5)) FROM buyTbl

-- CONVERT
SELECT AVG(CONVERT(float, amount)) FROM buytbl
-- PARSE
SELECT PARSE('3' AS INT)           -- ���ܹ߻��ϸ� ������ ����������
-- TRY_PARSE
SELECT TRY_PARSE('3.14' AS INT)    -- �� ��ȯ���ϸ� NULL�� ��ü ������ ����

-- height �� ���� smallint �̱� ������ varchar�� �� ��ȯ
-- NULL���� =(�̲�)�� ������ �ʰ�
-- IS(����) / IS NOT(�����ʴ�)    �� ��
SELECT name, cast(height as varchar) +' cm' FROM userTbl
 WHERE height is not NULL 

  -- YYYY-MM-DD HH:mm:ss
 SELECT PARSE('2021-05-14 10:27:10' AS DATE) --���� ���̾�
 SELECT PARSE('2021�� 5�� 14�� 10�� 27��' AS DATE)
 SELECT PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME)

 --��¥ �� �ð��Լ�
 SELECT GETDATE()  --Insert ���� ����Ͻú��� ���� ���̾�
 SELECT YEAR(GETDATE()) AS '���� �⵵'
 SELECT MONTH(GETDATE()) AS '���� ��'
 SELECT DAY(GETDATE()) AS '���� ��'

 -- ��ġ�Լ�
 SELECT ABS(-100)            -- ���밪
 SELECT ROUND(3.148592, 2)   -- (��, �Ҽ����ڸ�)
 SELECT FLOOR(RAND()*100)    -- 1~100 ��������

 -- ���Լ�
 SELECT IIF(1000>200, '��', '����')    -- �߿�