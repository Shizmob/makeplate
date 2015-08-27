$(B)/%.so: | $(B)
	@echo [ LD] $(notdir $@)
	@$(CC) $(LDFLAGS) $(DYLDFLAGS) $^ -o $@

$(B)/%.a: | $(B)
	@echo [ LD] $(notdir $@)
	@$(AR) -r $@ $^ >/dev/null

$(B)/%: | $(B)
	@echo [ LD] $(notdir $@)
	@$(CC) $(LDFLAGS) $^ -o $@

$(O)/%.o: $(S)/%.c | $(O)
	@mkdir -p $(dir $@)
	@echo [ CC] $^
	@$(CC) $(CPPFLAGS) $(CFLAGS) -c $^ -o $@

