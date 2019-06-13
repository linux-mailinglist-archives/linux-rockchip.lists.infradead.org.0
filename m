Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCB2447FD
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Jun 2019 19:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O13AX1TF44lj+xEF+QZXVE+jmrd01f41tR9/letL9fE=; b=AYLQmPWSfslxCL
	VYrdFp2nPtzBsKhP9k9qI/TUEIww6wpY3bhxOMLcKtqioLlYVZV89BJmq5wmVrPoD0uR9b3Twb2Lj
	Q/50uZ6dWBnUpY9vojqfPnPzZWwtrBwcYikgCALFi1A7JcXetPHaWhB8dIJJhWnoMvXyVkv/VgvDH
	DjejPeULOw9yPhYvaAOyNWIBENslAhNJe71NnQJg8OKF2WPARo7vdAjwhX0oFWDkBF+0F/yK7zB9B
	0Rsso1VkptKKUWeWr3XfqXtj7/ih8f9MXluO/Mikz77Plnzi8utaf3ORLW1DRboZUn8QB+S5xDP/c
	hEows1NLVcaX+FNfOhMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbT8u-0002y5-Dq; Thu, 13 Jun 2019 17:04:04 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbT8U-0002a6-TO
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 17:03:40 +0000
Received: by mail-qt1-x844.google.com with SMTP id i34so23373558qta.6
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2019 10:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=+fM9s+ZRu6a19ZVI0lc0MDu5AlmUc3QAgWfYbHMegA8=;
 b=qEi0As9FjslOUPyhy3Net8r6QbVgxoEl6gBQAvYjq4/nRnz7G3BE7He7EpNC/OXmBy
 q55XHN5KFNJpcOA/O+b9YOeBjoC219W355lHTG2oxWTzi/fcPQ6E9vhYB+iC8NgRq4vm
 8sURicPrA7zOoCFDeJl/egMR5HLgU9Sb2DueqkXvjKTLguUlVuG7RRu7zsTBhnkYIvgt
 fIPop3Ujnh2MeBfj1OeDEtCATPphFRkp3elQDHPRJ0z3FhRyAgHQPoweAVLo0ieppyRD
 X+OWwLS7qqUfYtLrO02SWcySfoUVqHpYZXmMiw2l0gDYKfHOvOm6EfIx7oInZIi+Guh/
 +X4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=+fM9s+ZRu6a19ZVI0lc0MDu5AlmUc3QAgWfYbHMegA8=;
 b=ggOHGci5vCzo84kpaY8LHdwIxoY6EQ0ar3OaFXPFXH57TrMZbx9SWHdeYezGto67me
 xn6G4UTPNai5cZsDEtp/hcomTC3HhZvZWw/qyzAAczlnKD8VIx1o6x/GbhmZ0FsAsUX/
 NeIq/zLCYuA+TT/0jO560qINQfloHY5xt7p+IeFEgnmw+pMaKw/sBYQzGIuviqvHtuZO
 hjfzujSX4cSF8j3FrAgOR+wuPfE0eF4ZS9/9G2cJlVbpzUoyfiumKmqefNe9Kq9moeKU
 9JqX9ByyXzOLvC2hEYTDsaNLNjqfzg2gYnt9perNfABdTHJK+7ccnXj37wfgCsrRGAsw
 h3Uw==
X-Gm-Message-State: APjAAAXirYpr96AgoxEf2JWC0V4Kpf3ic2a8IGI/CHBBbunyw7Xorchk
 Nf6Cy0Ss48027QDq2Kten6txL4PpnqI3UhvZ246ZWg==
X-Google-Smtp-Source: APXvYqxiy5kouzZBRbpjgIdOzVKd074tyypO+LFeT69dim/yHszXr0rChCoWGVx/P0+4hEwdMRtozIq6/hSSH8DadPI=
X-Received: by 2002:a0c:ba21:: with SMTP id w33mr4559727qvf.122.1560445418047; 
 Thu, 13 Jun 2019 10:03:38 -0700 (PDT)
MIME-Version: 1.0
From: Nathan Huckleberry <nhuck@google.com>
Date: Thu, 13 Jun 2019 10:03:27 -0700
Message-ID: <CAJkfWY4aYAwUWMGu02=0ibae05Qo3_Yqy-Q0eFw0k=2torhEHQ@mail.gmail.com>
Subject: Cleanup of -Wunused-const-variable in
 drivers/clk/rockchip/clk-rv1108.c
To: shawn.lin@rock-chips.com, Michael Turquette <mturquette@baylibre.com>,
 sboyd@kernel.org, heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_100338_988948_B0AFB26D 
X-CRM114-Status: UNSURE (   4.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hey all,

I'm looking into cleaning up ignored warnings in the kernel so we can
remove compiler flags to ignore warnings. There's a variable
(mux_pll_src_3plls_p) in clk-rv1108.c causing an unused const warning.
Just wanted to reach out to ask if this variable is intended to be
used.

It doesn't look like it has been used since it was first introduced.
If it is no longer needed I'd like to remove it.

https://github.com/ClangBuiltLinux/linux/issues/524

Thanks,
Nathan Huckleberry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
