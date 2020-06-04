Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3081EE6F8
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 16:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4d3ij+jDvnSlHkM1sf/RItBtgHwcZfRJYT4pSTo2EAo=; b=ijQYNpcFhEszeB
	lUmpZPIfQQZumzcFVhvGi0zOZ0B9XpyevtTV0KOqAsStHlm4IhIuCUPwIOWX72QNI6ytuYMvKD/0U
	MvT78D0AmKB/ULkgjArwXe2oatRqcuoIFdZ4HewTw1y5GnYEMF9/a/A3CXdvSyhOT0d82buyEQPDY
	dDmtHkEW9LVsFJ3jgxfNe2/IVQOxOzutlko6rDAzegyiR4wS6vd5wcQdICS6c404aBOP10iWYZRy/
	hy+qjnLmQDKqfU1ryYi85e68yZjo+2nsEiiiXOFdMz2PCvz8jth7Ti6dQK/h9LB55uSlo5LunI1gz
	5mBQSTBQEos9aDcmA82g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrDu-0006e9-Ao; Thu, 04 Jun 2020 14:52:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrDq-0006ce-Rk
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 14:52:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id m1so3597536pgk.1
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2020 07:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d20ccB6PVQmGHsflN7/kgqqNBLF8lJvbEcLUABZCXrI=;
 b=oebbuw+M/2Jhz3CLWEUmuLDuZ9OH1poh5XdgkmsXqL+CCxuLU+nylw3fCLSecVxS05
 B9nPKYH/V7Y5TM5TytNIYzSaH6lzZJ9Zt8j217xyLQ3ldRTcXeBh6yT8FxbhYrlmaO85
 SuYkak35rdY2yAtLioVcwmePPqdYZowlrVlOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d20ccB6PVQmGHsflN7/kgqqNBLF8lJvbEcLUABZCXrI=;
 b=XTRWCtCurYFupBcHamX6Y2IkriksaRlWczYWRiqIYhV1MCNtlaytxsE6F4QRxBXgVO
 8XgKUaU1yvZgL8wXfxQwnECbFMvgVdjK5skgy1TGIVKx0gZgxmZK1Rjmp5crF0O6u4qP
 vJUmHhxyEPncUIQaB0kYaBUD8AydnxSgLtAcrGjcGXbaze8FAYZZyjMnTs8GCm207l9Y
 IgMf5tVjJZjVL5JbE8fNNYG4jMH18oumqBjRsk95KIs9gw5B8YfzpX+Dk5qRJLO9iRep
 tj7DxhL+HjNoyAXHOU6O6lZkrrPpqC0AUf3lTcLb8Q6aZPpf6dkpJBchp6JmgzfUbLM1
 AcUw==
X-Gm-Message-State: AOAM533XdEUwWD1vEjG2HfOWrUPeIMHb/hV/vuWqjYIYX+bc2jG9uAjI
 S5Y7U2t9iHadJIO4TLVW2C+d8CnePPbXLA==
X-Google-Smtp-Source: ABdhPJxN/zA9oD5pqn2XyYzPOVTzL2ojosFkWhohT4bXFo5l4f0OWxXxhOByFqUbfSi4k1HB1i5dSA==
X-Received: by 2002:a63:5fc8:: with SMTP id t191mr4731889pgb.185.1591282317977; 
 Thu, 04 Jun 2020 07:51:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:41f4:94a8:1af3:a574])
 by smtp.gmail.com with ESMTPSA id 2sm4831283pfz.39.2020.06.04.07.51.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 07:51:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v3 1/4] Makefile: Drop to handle rkspi image type
Date: Thu,  4 Jun 2020 20:21:38 +0530
Message-Id: <20200604145141.356702-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200604145141.356702-1-jagan@amarulasolutions.com>
References: <20200604145141.356702-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_075158_917647_29FB06C7 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Changes for v3:
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
