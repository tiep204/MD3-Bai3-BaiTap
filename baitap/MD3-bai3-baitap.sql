
use quanlysinhvien;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select * from student;
select st.StudentName
from student st
where st.StudentName like 'h%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12
select * from class;
select c.ClassName
from class c
where month(c.startdate) = '12';

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5

select sb.Credit
from subject sb
where sb.Credit between 3 and 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2. 
select * from student;
update student
set classid = '2'
where studentname = 'hung';

--  Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm
-- dần. nếu trùng sắp theo tên tăng dần. 

select st.studentname ,sb.SubName,mk.Mark 
from student st 
join subject sb join mark mk on sb.SubId = mk.SubId
order by StudentName asc;