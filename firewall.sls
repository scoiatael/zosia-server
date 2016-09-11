public:
  firewalld.present:
    - name: public
    - block_icmp:
      - echo-reply
      - echo-request
    - ports:
      - 22/tcp
public:
  firewalld.bind:
    - name: public
    - interfaces:
      - eth0
