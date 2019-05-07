Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA4716AB2
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wWngUz4qShB1tEgBF3GDWnC0AtLiJW+S7uAfTiMC3aU=; b=BYAqdKHUMQqyBr
	Q9vSbXxLBIXsBIIB7b6MjFB+RgpL0i3pYKIM21ZEJCaw2W/GK5R10hPOGqIltZr2ty4RmZUpU4msd
	a9ys6aQKXKsVmIfZ4BTtjJm2PO/IJrMEx/FKgJCwkyVHOMM0sohn3saGG6Tpyeu3/hlx6S/FZUlL8
	9HLG5ISaH380w23MPpCRZHMQofm6jIdQpbFvtxmI8O5gdF26L/V1/ZPvBK49GCB/ffDKPgy0MpsKj
	+QP75Z8LzyZaS5/coDRsJRTrV7cz97g9ELwu9MLQumxuyy5xkMK8jrcvkRkFX8pcURVMIKs46KHdd
	2UdEFQ4vm/woPy4bDJFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5DG-0005n5-I2; Tue, 07 May 2019 18:53:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5DD-0005mZ-7v
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:53:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so9118806pfa.3
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HziFttqmNa2271tTCEc0a9YY7KO4/7g5MJhKXmyahPE=;
 b=jwvHgbgu3WQq6wl3P2KCksFNpYnE3cQwIEZXuhQf6zbm9gIaJEDjdxpB7Ke0/fwIxt
 lXAP+yMR6vh8O6NglxtHulYJVo5qidI65ZQmTfrkaDStyexmtyEpmmJx+mJQ49NCSH8R
 lBv+HxneiKdLEtm75awO1B6u4XWi9NCD2PFj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HziFttqmNa2271tTCEc0a9YY7KO4/7g5MJhKXmyahPE=;
 b=nKfB+fYA/gc3fxbdZ+e5EPYrJkHfoJZl6RJ/tiLod4Ucp8cjufUwDKPm5tEZuxVgsR
 b8f2kGB2lDRqtcgAVFWdl7XTaiOyv9wKkvrnHa3TyXsa7IVGREib/zH2UrWwQZZFQGSI
 d6G+gxzUk+bW0DBrYtNYaNrDwgktwY1pbw6Y7CEgNya/+yGXWFxZaMoh9+T91igJnvMG
 Ug+g6gZ98vH3UXfDdp/BRaWirYH0od0L0V7fX64+AmDVJHEpeVU0uTlXa7lJClT4GajS
 4J/x9R8AycXihLPDtKXt4fqnbxtiw5vNyBVZxgx0xCqv5VRwzC1hxZ4Lz4NvywSheh1f
 AV7A==
X-Gm-Message-State: APjAAAW5xIJmC/5IHvquJTayB1+bXPqS/POUOB1eoupAzohs8TKB1VQd
 5bkn0tJE5R8FFJ/Y77zBRa5wOA==
X-Google-Smtp-Source: APXvYqx0kKDotoqfXcQseZfyMQrn/OlcjC4wi3RJbFiNnWJE8FqPBw/UEkkHsrx6ALkDtc3Lw6nD0w==
X-Received: by 2002:a63:534f:: with SMTP id t15mr42118283pgl.445.1557255189753; 
 Tue, 07 May 2019 11:53:09 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id l83sm14668086pfi.150.2019.05.07.11.53.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:53:08 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v3 0/6] rockchip: rk3399: Make u-boot.itb as BUILD_TARGET
Date: Wed,  8 May 2019 00:22:09 +0530
Message-Id: <20190507185215.15441-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_115311_437384_8A75F348 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RK3399 TPL changes are merged recently which I was thinking 
of waiting for next MW. so this series skip binman changes 
from previous version[1] and have only BUILD_TARGET changes.

BINMAN changes would need another rework, where we need to consider 
the TPL image as well and that would send separately.

CHanges for v3:
- skip binman changes
- rebase on u-boot-rockchip/master
 
[1] https://patchwork.ozlabs.org/cover/1092198/

Jagan Teki (6):
  Makefile: clean image.map
  Makefile: clean bl31_*.bin
  travis.yml: Add pyelftools install entry
  rockchip: rk3399: Get bl31.elf via BL31
  board: puma: Get bl31.bin via BL31 and rk3399m0.bin via PMUM0
  Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip

 .travis.yml                                   |  1 +
 Kconfig                                       |  2 +-
 Makefile                                      |  3 +-
 arch/arm/mach-rockchip/make_fit_atf.py        | 11 ++-
 .../puma_rk3399/fit_spl_atf.its               | 58 ------------
 .../puma_rk3399/fit_spl_atf.sh                | 94 +++++++++++++++++++
 configs/puma-rk3399_defconfig                 |  2 +-
 doc/README.rockchip                           | 14 ++-
 8 files changed, 115 insertions(+), 70 deletions(-)
 delete mode 100644 board/theobroma-systems/puma_rk3399/fit_spl_atf.its
 create mode 100755 board/theobroma-systems/puma_rk3399/fit_spl_atf.sh

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
