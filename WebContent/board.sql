create table board(
board_num number,
board_name varchar2(20),
board_pass varchar2(15),
board_subject varchar2(50),
board_content varchar2(2000),
board_file varchar2(50),
board_re_ref number,
board_re_lev number,
board_re_seq number,
board_readcount number,
board_date date,
primary key(board_num)
);

create table MEMBERBOARD(
board_num number,
board_name varchar2(20),
board_id varchar2(20),
board_pass varchar2(15),
board_subject varchar2(50),
board_content varchar2(2000),
board_file varchar2(50),
board_re_ref number,
board_re_lev number,
board_re_seq number,
board_readcount number,
board_date date,
primary key(board_num)
);

select * from memberboard;

create table memberlist(
member_id varchar2(15),
member_pw varchar2(13),
member_name varchar2(15),
member_age number,
member_gender varchar2(5),
member_email varchar2(30),
primary key(member_id)
);

select * from memberlist;
--멤버테이블 이미 존재해서 바꿔야함
--아직 생성 안함
alter table memberboard add constraint pk_board_id foreign key(board_id)
references memberlist(member_id);