texify lunchmeeting.tex
dvips lunchmeeting
ps2pdf lunchmeeting.ps lunchmeeting.pdf
pscp lunchmeeting.pdf blum@mercury.comlab.ox.ac.uk:/auto/fs/websrc/oucl/work/william.blum/
plink blum@mercury.comlab.ox.ac.uk /users/blum/packbin/webpub /auto/fs/websrc/oucl/work/william.blum/hog_exe.zip /auto/fs/websrc/oucl/work/william.blum/lunchmeeting.pdf