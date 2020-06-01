Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 398EB1EB062
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 22:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhV/bF7JO27dKU/QhsGewRKF5On8cgRaWRcAL1otncQ=; b=afnXGafJN+7vbw
	swmgXue/Ym4h0RYQb5+h5MQq6ikC7LDtJMI2lnFTOXOn/IbjltpHSk4rbe/6nTO9XE+j3MOLURN3J
	omGNxVOiMxS83GaEcxt/z89ixNWk2/r/70CXpMr2XoV8E25FM0Iw0lVH2gmsmKM3dLu7j5vATJlaN
	HaDzsvAG11wELa7lWuWWdolduPo8QyWljyuXi006GSj16oYHv4TCe1VZJ24WfWXJ+rGAxqcrotqxu
	/q+pTVOQcRWVKg/oLDIU54T5fFakfg9OsYQZdvRdPycDeUTKj4tysT77BbkA6o875GN+rrc7EIxCN
	GVwAWmxxebUR2zmKBq2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrGZ-0002NW-Jp; Mon, 01 Jun 2020 20:42:39 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrGW-0002M8-M8
 for linux-rockchip@lists.infradead.org; Mon, 01 Jun 2020 20:42:37 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 5so363504pjd.0
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2020 13:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BNexMqhtjdTh16Uq9oCW3PAfLr/10uATBtmxs/MmdRw=;
 b=lpM+7QC7A6/oXNUxAXaghs4+w/QTBzzl+mZP5BXCmNM8cNAggn2+bd5BTIRqHH9jl2
 s0HbBay0AOhlx8AiG5XBwUkU682Bg47nUZzeuoBN63SIkRO0JqrQWws72wBC4WHSOXEw
 Blhl8jz+Jvwqg+3WQcdSdyjn/NXeq+W0BQkCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BNexMqhtjdTh16Uq9oCW3PAfLr/10uATBtmxs/MmdRw=;
 b=DiacEgtnh34pUOMpJ0xr/69Sqy487Ty8LvWNSm0zYTEAbWbT80NgvHQEY730EAdrNo
 dfjoCcFdBjX8K5dLsPMJ70wARTVFgbSNJbRlri6i+d7pYpWny2QLueTXSJ6LQxmg/vu4
 6yOjFW9TMok1BARdlfVLu07b6G0wF+wvsGGkaMef+Q9xfJxoRt5eNynbq12hma9P/oDB
 SKhuqcl2uQbMYQLWM9wBaWD6VKbcdky4NV9Kr4CzelDZ/aBhioEinzlrfkNrY8YE3gIX
 4eZfm/uaJv7+/ET6CakbrzbV6Uw9yQxBKFWPQEqW2fZ+jJw413xhh3Zj2iDI1bGzv/YT
 HIdQ==
X-Gm-Message-State: AOAM530K1JrdE6jNpB38OXpEeBMMWXUyrqr6wTekM7NKLXeFs7qgpCbc
 AL3o4mmLGZK+zA6NruiBUIXkLA==
X-Google-Smtp-Source: ABdhPJxNwTerv8RZKMN0AWruqEXqCEYJA40YoJ2iptY1HVlJi1bx99QFsXnSTA3Nm1LAjRHYEJWRoQ==
X-Received: by 2002:a17:90a:1919:: with SMTP id 25mr1196124pjg.7.1591044156215; 
 Mon, 01 Jun 2020 13:42:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:658b:ecbc:7ea4:1996])
 by smtp.gmail.com with ESMTPSA id k7sm283581pga.87.2020.06.01.13.42.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 13:42:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v2 1/4] Makefile: Drop to handle rkspi image type
Date: Tue,  2 Jun 2020 02:12:10 +0530
Message-Id: <20200601204213.466120-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200601204213.466120-1-jagan@amarulasolutions.com>
References: <20200601204213.466120-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_134236_719187_1D510C50 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On rockchip platforms, SPI boot image creation is not
straightforward like MMC boot image creation where former
requires to specify tpl, spl in multimage format in mkimage,
and later simply do a concatenate mkimaged-tpl with spl.

On this note, let drop rkspi image type creation via kbuild
and let inform via rockchip.rst

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/Makefile b/Makefile
index 3851dd9fa0..db3b6b9991 100644
--- a/Makefile
+++ b/Makefile
@@ -1438,22 +1438,15 @@ u-boot-with-spl.bin: $(SPL_IMAGE) $(SPL_PAYLOAD) FORCE
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP),y)
 
-# rockchip image type
-ifeq ($(CONFIG_SPL_SPI_LOAD),y)
-ROCKCHIP_IMG_TYPE := rkspi
-else
-ROCKCHIP_IMG_TYPE := rksd
-endif
-
 # TPL + SPL
 ifeq ($(CONFIG_SPL)$(CONFIG_TPL),yy)
-MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T rksd
 tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
 idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
 else
-MKIMAGEFLAGS_idbloader.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+MKIMAGEFLAGS_idbloader.img = -n $(CONFIG_SYS_SOC) -T rksd
 idbloader.img: spl/u-boot-spl.bin FORCE
 	$(call if_changed,mkimage)
 endif
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
