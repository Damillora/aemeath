kind: stack

(?):
- not prod_keys:
    depends:
      - components/boot/boot-keys-test.bst
- prod_keys:
    depends:
      - components/boot/boot-keys-prod.bst