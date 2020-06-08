Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29311F1ED9
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 20:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOxQImu/7owD29fHSotR46fqjC1Q71+bXaW18Vbbuo8=; b=kQEX4bUwPjg2rZ
	pfyhh8S/HpJLvA1IqKTswq6WExYdvrmw5QA23SJE1OiPVu0LFNs0GF/nPosVp1nd+O93htTTlG7BV
	GDqqyqCmceN8thQULaNuA42f+xx13LPL5InM6kx7yHj3sSO1BlMywTB8B05ABdINc4F9RnFgQHRsY
	KQJ6IkHzsg7/q3u1WBBufH3tRcokQRrnxFaaE606GhgGGF3cWmPYI0Ryy9W+EyXRw3u00yUUj+VOT
	RvkrT6VqoZ8f5lUI0aNDx8fp9JUpGNqDNeEvL39JK4E3nbAWXnpDAZMEOIr7py6Ut+fzcRxP857Lk
	gez/vD0iINZCcakoW7nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMKu-0002dj-4t; Mon, 08 Jun 2020 18:17:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMKr-0002cR-Od
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 18:17:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id h185so8898529pfg.2
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2020 11:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rqXEXm0tb4ZEKQl4MRX0HDHcSNYC6CGgq8tXMrLZibo=;
 b=Yo6LdyloW7Y+CWEp8OdPSDYaZ2RCbtBPY1qBCBgtwD69gx26lj8ICS43g4WOMjDcGv
 Si1WQJvq2ojOFTdm2vmEZEibupf/afw50ESM1XXKkiLqEusn1i0+TCJ6GHbOvttFm0BN
 +Ut+OTPOeiBrj9UkrQNvx6lu45FsxUDPtqT/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rqXEXm0tb4ZEKQl4MRX0HDHcSNYC6CGgq8tXMrLZibo=;
 b=fwlWmQkEIm6MhRSxa1YEoQ1zl3Sz8B/F8ynK1z+tvsVYUl3KJI8zrgGQAMLuBOY7qC
 In3uT3QI9QycFsavYa/43uUGBifnoO1eFxssWuWjCP+SVV/ZkVA4KtQycw52yD4/U2X4
 hp7of5PdnlvT987r1BtyqMP5I9LlPxZnFg+/MR4HZ2BoM6RQ+GQOF5PIcqp7MvnOLmTW
 scYABzfvOXJcs3cB7q7NQmsTtv3VZgmEpBCldl8Ope+T2l/+m+ZWSI3xxBzFKSKVI441
 NAWaenO3fOxsKWidJc+4dXIyyPOvaUj9GJcqERHHI1q6FhmdoQZy2x5gs1fk6og5+UJW
 eRCA==
X-Gm-Message-State: AOAM532Z4aLQqlWy/Mlx+96V+Dxw57Vch/g3t8AdidN42+QzZwW750LD
 YRwckopkGbd/FZXVVlRgTOw0Tw==
X-Google-Smtp-Source: ABdhPJzOHdEwfHhi/5tP7IIEeoH4ma+VO7IYSHebOtpoQVpGRlYJqKgrgrHXwJAkvdYwK5vwEIUbUQ==
X-Received: by 2002:a63:c501:: with SMTP id f1mr9536927pgd.324.1591640245008; 
 Mon, 08 Jun 2020 11:17:25 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9043:af95:b7b4:3ade])
 by smtp.gmail.com with ESMTPSA id t7sm180213pju.42.2020.06.08.11.17.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:17:24 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 1/4] Makefile: Drop to handle rkspi image type
Date: Mon,  8 Jun 2020 14:17:05 -0400
Message-Id: <20200608181708.17842-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608181708.17842-1-jagan@amarulasolutions.com>
References: <20200608181708.17842-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_111725_798468_69AE024B 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
- none

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
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
