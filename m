Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76275136069
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 19:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhMPnJ/etF4xiQNWPAWCGFq+jZeSrqiMqG9gHL4JpVs=; b=lWz4/yN7Pv9ERy
	62I0PvjgNu+aTDY+icMlmiXMZRHfziAtaWGPOmMvD9qtoeA4dsVZbWNo6xHCIbKP/o922agu8ab8W
	WsZTRQl4d7PO7WPY2gezyaYB5DWLLNYeknW3+SzrZ23h+eDEZ2v0f2KCAcA43Q1KzWwjdTJ9gZoaL
	SRo0Hkgg3DmnVXzMOdzjknUOs8M8TYaVERBNXdJW9dJsC852z3gWjqz2/Kygec6NRbOBPDl41BEhj
	bHHFhueZhxq7JUKbCXrPME0a9vtf1Z33ipcf6iHyZkd9ad7bGYow38s5cho42MhoqJeGbtZUszhfF
	mB0CokkFsn+SY4ZkvrGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcqo-0002n4-LU; Thu, 09 Jan 2020 18:48:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcql-0002mK-PZ
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 18:48:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so3779521pfs.6
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 10:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZU8kvWg4m+hftYZcxYVQAS3W4JM96ciVS2kwizCqq9M=;
 b=oP0uRYPAEAOaggQ/REYXW7UaoBex/A5GL3FZCs1QGkko9ghyflhb3SrVuOyzqryGoe
 zjECopiK6iv1k58vemjNePDUvPKAJ7QDgspQKiQPaij3c2i4hssiJI8GIEe1KLlf9ynq
 EiziVUGvM1SjR8imUjwD/pJm4xoXp5bMqDuKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZU8kvWg4m+hftYZcxYVQAS3W4JM96ciVS2kwizCqq9M=;
 b=JYc4Bae6aFDB/zyF5/99of7DmL1sfspMdC9yn0leoCv3ggMwkG4goqXitsJwlCm0tI
 mzKh7BheMXyObcrwlZzKZuMmG4SrNrX4/DjSb9CX4MMt31oyBzyRqK7WKXqm6t8Eb5gL
 1HAGwkJwHavlfQJkuBFHXX+xLBorHA/5WBSk5u0dTJg8Tu/WA0fzHTdQIUc6fxxVDEZe
 mEVkdSYgXAAv5oCXIQRZ83Z/RGJ41+VcLr2blj114cm3Dod12zejSbczDHc7btVampoD
 EAfixCPKBzF8iI91aE83CqXVnwqNs91lWKA/+BUpoBngNE9DWm6XvDsnKUGJPeacYnuf
 KkuA==
X-Gm-Message-State: APjAAAXiJtOr1mN6BBbppHtRfxd12LiB1rlFMq8RR01KGfzqFCfwyBZz
 bbYKLrIvm64UUnWTE7WTXwBXXQ==
X-Google-Smtp-Source: APXvYqz5tJVW15+xI0hAosP1sJb7rIXahl8WM6ylzL3uzisT540VClKQiLvR58JFHSrWcZ6Gpul7kA==
X-Received: by 2002:a65:6898:: with SMTP id e24mr13386669pgt.59.1578595687111; 
 Thu, 09 Jan 2020 10:48:07 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c4eb:be5d:1485:edee])
 by smtp.gmail.com with ESMTPSA id i8sm8967306pfa.109.2020.01.09.10.47.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 10:48:06 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v7 3/7] Makefile: rockchip: Support SPL-alone mkimage
Date: Fri, 10 Jan 2020 00:16:18 +0530
Message-Id: <20200109184622.3098-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109184622.3098-1-jagan@amarulasolutions.com>
References: <20200109184622.3098-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104807_832137_4C78CEC7 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add SPL-alone mkimage tooling support via Makefile for
few platforms or boards used in rockchip family.

With this users would get rid of explicitly creating
mkimage tool for rockchip rksd or rkspi boot modes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 50ac12fe9b..5361524f77 100644
--- a/Makefile
+++ b/Makefile
@@ -908,7 +908,7 @@ ifeq ($(CONFIG_MPC85xx)$(CONFIG_OF_SEPARATE),yy)
 ALL-y += u-boot-with-dtb.bin
 endif
 
-ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL)$(CONFIG_TPL),yyy)
+ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL),yy)
 ALL-y += idbloader.img
 endif
 
@@ -1382,11 +1382,19 @@ else
 ROCKCHIP_IMG_TYPE := rksd
 endif
 
+# TPL + SPL
+ifeq ($(CONFIG_SPL)$(CONFIG_TPL),yy)
 MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
 tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
 idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
+else
+MKIMAGEFLAGS_idbloader.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+idbloader.img: spl/u-boot-spl.bin FORCE
+	$(call if_changed,mkimage)
+endif
+
 endif
 
 ifeq ($(CONFIG_ARCH_LPC32XX)$(CONFIG_SPL),yy)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
