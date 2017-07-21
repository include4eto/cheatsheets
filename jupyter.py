from IPython.display import display, Audio, HTML
def notify(text = 'Ready'):
    display(HTML('<script type="text/javascript">new Notification("{0}");</script>'.format(text)))

