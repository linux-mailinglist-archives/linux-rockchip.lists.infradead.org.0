Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEACA69ACB
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uu9QS8/g26Ako4s8InpY5sof4osWX8wx9ONARTS/Juo=; b=p4FQgwk5RvpFLF
	YmtCN3xQ4fQMiXGYVX9624AGDeHoMcMOROU8n6GTHQr+BO1QZSS31FphKgSd5j2JR6ciRlam0daUl
	DdKfR5L95oQbi4+6zZuuvc1efTUNNwYvm5x+yew0n0DsQ5ZvkfmHeq2/U9OZIdLezHPoHo0PYOFrS
	yFhA5PKDeMaa78iSO/xJH79nLobMLaKh0yDBu0s8PosjfiIdjTOdV8m7y9SgrihRKxe04IJEf4dnR
	p9AtLMtbe5fW+mQVh1pqvmrVfctK/eyrggIZrTiaAMuYwpa/K5+oUabNQyqN2YoT1AGpYiEJRsqAs
	bn2Q4OUzZQpviJUuC1PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5is-0000kK-Ng; Mon, 15 Jul 2019 18:29:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5io-0000jc-6G
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so8110005pgl.11
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KvZohVLLqyD6l0G8WQVwnSKUyn7I3sePmNitTykUXS0=;
 b=FbjluZ6ceQp79P3e1RA+2G+MJTOncEgeypQnW+GfBSDEDjxZPZBSG4tk23nQu2G6Nz
 rs42fDSYXWIRbDJcqe605DPI3imPXRKfhkB37a8oa7EupxD7DAD16xMt+WmDBbiUFXFS
 MvRJBVqMXw2sSLpjvPmx2lfvwnKvSuNIJ4pYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KvZohVLLqyD6l0G8WQVwnSKUyn7I3sePmNitTykUXS0=;
 b=Tqttk3A4DkGDrrQ1NdkEO24pivof+I+qlIvkpGZEBpr+AJSJl5jBti+/bm7j3oFb3X
 peTNBFl0dergWwm7UQnDvC1qzvIHhaSRAmFcZ/+JQcpSUF3aF8Db7fh2Zyw+5KxQHBxH
 lNfdzYlnsfhsmNevdW1wRwzcqeyI9MHLVkXS4NkmPVYXfQd/xyYfJ++J6N6CdHrcGdbd
 K4ef/PmJs0hwpp2U4N2Tjs4vT/9E048EmIvlDJdDZbeY7spHjgKKGTOu25YU0QNLssNZ
 Iqp9IC7xFlF/kVV4laY/5TdDbusonhDAHaQizVBDjwIPRTw8yTSo08wOhT0GNzAyDxx8
 lZlA==
X-Gm-Message-State: APjAAAV7PoSSe8pSZmP+/Yxxd76kNLpWlEJMVLxUEbaopPyeOb1VgDQ1
 ehRNKPT2fIdVZXUcc4OCOqOReg==
X-Google-Smtp-Source: APXvYqyf+6XqmwxMMHccaqRTPRY1zm3QYXTYZFVUNnSUroaBIxJx6XKyh0IGKz13sJJql8dFsMr8Jg==
X-Received: by 2002:a17:90a:374a:: with SMTP id
 u68mr30704940pjb.4.1563215349258; 
 Mon, 15 Jul 2019 11:29:09 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:08 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 00/18] ram: rk3399: Add rank detection
Date: Mon, 15 Jul 2019 23:58:38 +0530
Message-Id: <20190715182856.21688-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112910_241659_A3CA3F09 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is v3, version of dynamic rank detection changes from 
previous lpddr4 changes[1].

rank detection would required for probing single channel
ddr configuration like NanoPi NEO4.

Changes for v3:
- rebase in master
- order them in proper way

[1] https://patchwork.ozlabs.org/cover/1116734/

Any inputs?
Jagan.

Jagan Teki (18):
  ram: rk3399: Handle data training return types
  ram: rk3399: Clear PI_175 interrupts in data training
  ram: rk3399: Use rank mask in ca data training
  ram: rk3399: Use rank mask in wdql data training
  ram: rk3399: Add phy pctrl reset support
  ram: rk3399: Move pwrup_srefresh_exit to dram_info
  ram: rk3399: Add pctl start support
  ram: rockchip: Add initial Kconfig
  debug_uart: Add printdec
  ram: rockchip: Add debug sdram driver
  ram: rockchip: debug: Add sdram_print_ddr_info
  ram: rockchip: debug: Get the cs capacity
  ram: rk3399: debug: Add sdram_print_stride
  ram: rk3399: Compute stride for 2 channels
  ram: rk3399: Compute stride for 1 channel a
  ram: rk3399: Add rank detection support
  ram: rk3399: Enable sdram debug functions
  rockchip: dts: rk3399: nanopi-neo4: Use DDR3-1866 dtsi

 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi   |   1 +
 .../include/asm/arch-rockchip/sdram_common.h  |  21 +
 drivers/ram/Kconfig                           |   1 +
 drivers/ram/rockchip/Kconfig                  |  26 ++
 drivers/ram/rockchip/Makefile                 |   3 +-
 drivers/ram/rockchip/sdram_debug.c            | 147 +++++++
 drivers/ram/rockchip/sdram_rk3399.c           | 366 +++++++++++++++---
 include/debug_uart.h                          |  19 +
 8 files changed, 529 insertions(+), 55 deletions(-)
 create mode 100644 drivers/ram/rockchip/Kconfig
 create mode 100644 drivers/ram/rockchip/sdram_debug.c

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
