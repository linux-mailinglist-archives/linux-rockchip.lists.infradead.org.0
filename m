Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520731B85E6
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 13:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oWgRuJloU/OyrX6KA5mIwsq4uwKd9PmWg2eb7Ew7SIQ=; b=UhY
	LYUQXFtQX84FGUHL9kxCzngBZWJqmv52lYAFDcLYkCRAGj+OFiva7gVA2ynrMwrqEPNuIyUsMsXVr
	3lXXcyAb0Z2C+16ID1aocib9slN/QwbzOaKE1u/YF+EfBO6mZQ07JY3a5KUXDH8b1UAI6NB68cp+F
	wf7n/TwjEnW9o+Hi9wN7dJdgZrKWPyzXz8eRifZbJtkCw9VrnboRW5KI3+qLhB5xnhh9klt64RB/G
	O0ONqo3tSGYaEEvZiBRb5h8TCQes/lTtBvn2nQ6bsiI07ywqNmpsE3o2IHXQ1xepqAoyejUEU3Wl1
	47cB/st2GnJcZ+Ft+QG5bTQc1lqlvsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIbb-0006Cn-21; Sat, 25 Apr 2020 11:04:19 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIbQ-0006B7-Ch
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 11:04:16 +0000
Received: by mail-pg1-x544.google.com with SMTP id h69so5932173pgc.8
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 04:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=45Ydihz1IvX8uDoyYZB1qVjbx6jXCFJDXqo8J6o2bN0=;
 b=qo2xxTtDOacz09y8xvPnsWOHY5eZFQ+my8cJOgO2lyAXvqG6VkPnniFTskzpI3JMHZ
 CBIR0T+KbIwCa8ezhHQyYXHobzpxQly1hHaPcUqhy6nMaiDbElOce/883MuaoGb4Zryl
 fOZr7MZvaBUdJVug0SFGrHgaJMF8GsRmPnZno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=45Ydihz1IvX8uDoyYZB1qVjbx6jXCFJDXqo8J6o2bN0=;
 b=mlNXJ8abwf9O4exz5NgFDAc69pOEyNJA1mjEjP1XNwsoVEW7ED/065E5W+Z7xlO2XI
 g8VYpXp3oWe+5/8d8rO/faGU35PkkyiwVfe7GJVQQLyL2em53PFYM+1zvz9CpDVDiz54
 NqurkhiVl7Sbin8tzrpiL+VmOITMCS/KsM1wB7GpnMmYdYenHSI5PS7uHgsgAWfZaASj
 yKLxRnKADXse46DLHZPZiOs8hCp2svNWHUK2clcH6/fH3DpewjUSEf11vllODsvMtevM
 3MugrNJqvaaQs2NFhXtEh+MpkgwpAPHfDJ4057uSI7FNeMbkIuXETSqxzO5xgV/C2Z3C
 DKPA==
X-Gm-Message-State: AGi0PuZeO7c+Lc4dPJk/I4dqCUSJXB61yk29C9l2CBEhSJDpxu1JPDHD
 T6PV7gUtmqhiXuAxzN9WdPrAog==
X-Google-Smtp-Source: APiQypJNFQPgpMDZAQQoTsMglTJJiuRxwjyw7xWJpoKl03uuWblMJu8wBQem+9gZ8nUx72JokS+EbQ==
X-Received: by 2002:a62:6dc6:: with SMTP id i189mr4073165pfc.30.1587812647226; 
 Sat, 25 Apr 2020 04:04:07 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 v94sm6922831pjb.39.2020.04.25.04.04.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 04:04:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 0/8] rockchip: Add PCIe host support
Date: Sat, 25 Apr 2020 16:33:46 +0530
Message-Id: <20200425110354.12381-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_040415_003338_6B342801 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Thanks to Patrick for initial work done on this.

This series support PCIe host controller support
on rockchip rk3399 platform.

Works well on rk3399 boards like rock960, nanopc-t4 
and roc-kr3399-pc-mezzanine board as Gen1 configurable 
host.

It has dependency with v5.7-rc1 dts(i) sync series[1]

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200425105319.12009-1-jagan@amarulasolutions.com/

Any inputs?
Jagan.

Jagan Teki (8):
  iopoll: Add dealy to read poll
  iopoll: Add readl_poll_sleep_timeout
  clk: rk3399: Enable PCIE_PHY clock
  clk: rk3399: Disable PCIE_PHY clock
  pci: Add Rockchip PCIe controller driver
  pci: Add Rockchip PCIe PHY controller driver
  rockchip: Enable PCIe/M.2 on rk3399 board w/ M.2
  rockchip: Enable PCIe/M.2 on rock960 board

 arch/arm/dts/rk3399-u-boot.dtsi             |   1 +
 board/vamrs/rock960_rk3399/rock960-rk3399.c |  20 +
 configs/nanopc-t4-rk3399_defconfig          |   4 +
 configs/roc-pc-mezzanine-rk3399_defconfig   |   4 +
 configs/rock960-rk3399_defconfig            |   5 +
 drivers/clk/rockchip/clk_rk3399.c           |  32 ++
 drivers/pci/Kconfig                         |   8 +
 drivers/pci/Makefile                        |   1 +
 drivers/pci/pcie_rockchip.c                 | 484 ++++++++++++++++++++
 drivers/pci/pcie_rockchip.h                 | 142 ++++++
 drivers/pci/pcie_rockchip_phy.c             | 205 +++++++++
 include/linux/iopoll.h                      |  23 +-
 12 files changed, 920 insertions(+), 9 deletions(-)
 create mode 100644 drivers/pci/pcie_rockchip.c
 create mode 100644 drivers/pci/pcie_rockchip.h
 create mode 100644 drivers/pci/pcie_rockchip_phy.c

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
