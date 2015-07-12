import os, sys, errno, shutil


def main(argv = None):
    folder = r'C:\Apps\Gizinta\gseFP\CADVault\Floorplans'
    outfolder = r'C:\Apps\Gizinta\gseFP\CADVault'
    filegroup = 200
    dwgs = []
    dwg = []
    group = 0
    i = 0
    fcount = 0
    for root, dirs, files in os.walk(folder,followlinks=True):
        for file in files:
            i = i + 1
            newdir = makedirs(root,outfolder,group)
            docopy(root,newdir,file)
            fcount += 1
            if i > filegroup:
                if 'esri_cad.wld' in files:
                    docopy(root,newdir,'esri_cad.wld')
                    
                i = 0
                group = group + 1
                print 'Group', group

    print "processed", str(fcount),"drawings"

def docopy(root,newdir,file):
    srcname = os.path.join(root,file)
    dstname = os.path.join(newdir,file)
    try:
        shutil.copy2(srcname, dstname)
    except (IOError, os.error) as why:
        if not str(why).startswith('[Errno 13]'):
            print why, IOError, os.error
    

def makedirs(root,outfolder,group):
    dirs = root.replace(outfolder,"").split(os.sep)
    fpn = 'Floorplans' + str(group)
    newdir = root.replace(os.sep+ 'Floorplans' + os.sep,os.sep + fpn + os.sep)
    fldr = outfolder 
    for adir in dirs:
        if adir == 'Floorplans':
            adir = fpn
        fldr = fldr + os.sep + adir
        if not os.path.exists(fldr):
            os.mkdir(fldr)
    return newdir



if __name__ == "__main__":
    main()
