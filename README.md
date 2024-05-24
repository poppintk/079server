# MapleStory079�����

## ˵��

����Ŀ��Դ��GitHub��[MapleStory](https://github.com/aoaostar/MapleStory)��

Windows��ʹ��phpStudy���ɻ�������С�ױȽ��Ѻã���������̫������Ķ����ˡ�

������ƪ�̳̣����ÿ��Ը���star�������ۣ�Ҳ���ԼӺ���˽��

1. [ð�յ�˽�������](https://blog.afauria.xyz/2022/09/01/geek-2022-09-01-%E5%86%92%E9%99%A9%E5%B2%9B%E7%A7%81%E6%9C%8D%E6%90%AD%E5%BB%BA%E5%9F%BA%E7%A1%80/)
2. [ð�յ�˽���v079](https://blog.afauria.xyz/2022/09/02/geek-2022-09-02-%E5%86%92%E9%99%A9%E5%B2%9B%E7%A7%81%E6%9C%8D%E6%90%AD%E5%BB%BAv079/)
3. [ð�յ�˽���v176](https://blog.afauria.xyz/2022/09/08/geek-2022-09-08-%E5%86%92%E9%99%A9%E5%B2%9B%E7%A7%81%E6%9C%8D%E6%90%AD%E5%BB%BAv176/)

## �ļ�

* scripts���ű�
* wz��ð�յ�ѹ���ļ����洢��Դ
* maple.jar������˴���ļ�����������Ҳ�����һ��jar������
* config�������ļ������ǱȽ�������
* src������˴���
* UnlimitedJCEPolicy.tar���޸������㷨����
* [JDK1.7 armv7����](https://www.oracle.com/java/technologies/javase/javase7-archive-downloads.html)

## �޸ļ�¼

* Fix��ɾ���˲ֿ��е�JDK����ΪCPU�ܹ���һ�����ã������еĿ����Ѿ���װ��JDK��
* Fix���޸�����Ϸ��λ��ա��̳��޷�Ӧ���⡣

## �˿ں�

1. 9595����¼�˿ں�
2. 8600���̳Ƕ˿ں�
3. 2525~2530��Ƶ���˿ں�

## ʹ�ò���

1. ��װJDK1.7��MySQL�����û�����������ע��CPU�ܹ���
2. �������ݿ⣺`create database maplestory_079`
3. ����SQL��ṹ��`source <path>/ms_20210813_234816.sql`
4. �޸�`config/db.properties`���ã�ȷ���û��������룬���ݿ������Ƿ���ȷ
5. �޸�`config/server.properties`����`127.0.0.1`��Ϊ����IP
6. ����`./start.sh`���������
7. ����079�ͻ��ˣ�ָ��������IP��ַ�Ͷ˿ں�

## ����

### �����㷨�쳣

```shell
Error initalizing the encryption cipher. Make sure you're using the Unlimited Strength crptography jar files.
```

�������ѹ`UnlimitedJCEPolicy.tar`�����ǵ�`jdk1.7.0_75/jre/lib/security`�е�jar�ļ�

docker exec mapleDB sh -c "mysqldump -uroot -pafauria maplestory_079" > db.dump