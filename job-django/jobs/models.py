from django.db import models

class JobHistory(models.Model):
    macongviec = models.CharField(max_length=255, primary_key=True)
    tennhatuyendung = models.CharField(max_length=255)
    trangwebnhatuyendung = models.CharField(max_length=255)
    loaihinhcongviec = models.CharField(max_length=255)
    tencongviec = models.CharField(max_length=255)
    lienketungtuyen = models.CharField(max_length=255)
    ngaydangtinUTC = models.DateTimeField()
    ngayhethanUTC = models.DateTimeField()
    thanhpho = models.CharField(max_length=255)
    quocgia = models.CharField(max_length=255)

    class Meta:
        db_table = 'JobHistory'  # Chỉ định tên bảng chính xác

    def __str__(self):
        return self.macongviec
