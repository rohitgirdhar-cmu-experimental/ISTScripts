import zmq
import happybase
import base64
import sys

port_num = 5554
DEBUG = False

# set up the hbase access
conn = happybase.Connection('10.1.94.57')
tab = conn.table('roxyscrape')

# set up the server
context = zmq.Context()
socket = context.socket(zmq.REP)
socket.bind("tcp://*:%s" % port_num)
print 'Server Ready at %d' % port_num

while True:
  imid = socket.recv()
  if DEBUG:
    print 'Received %s' % imid
    sys.stdout.flush()
  try:
    img = base64.b64decode(tab.row(imid)['image:orig'])
  except:
    img = r''
  socket.send(img)

