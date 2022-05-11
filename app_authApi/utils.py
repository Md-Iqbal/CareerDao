from django.core.mail import EmailMessage


class Util:
    @staticmethod
    def send_email(data):
        email = EmailMessage(
            subject=data['email_subject'],
            body=data['email_body'],
            # from_email=data['email_from'],
            to=[data['email_to']],
        )
        email.send()
