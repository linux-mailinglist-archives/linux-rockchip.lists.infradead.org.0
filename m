Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568621F73F9
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jun 2020 08:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gAZJRXb7Yi95lCJ5MxMPg0HdF4l+Ah0s5mN2PtCIbM=; b=kB/c1w/U7bJUpO
	fVf2tsFpcCF6onM/qf1unjnB1OskhdIhsjwNpNRXGQBzLkv1PM+p1WmXW3nptR3bCi5uvLCun2JKD
	lRfQiT6B0QE+cV/WHLdZZCLzsWFpq616a6AQq9tnLwDVmNvkXaQ0taxrky9BKlhIL5WMJ9CF3f7tp
	7o3D/D9pxX1oHQB41N0tA8+KpexgHqDMfwxsoUoMIt+DtBMg3o4nDIcXLikuoehrxttfN2hE9N48W
	JpBMkiKBDHTq5lkz1tY+aun67PyvkOCgwan3FGh3ce3v8K3cuUUbwggOEa6mbDZyyxXNC3rS4oYPE
	N4E6fFmfZ+pdBICsqXRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdNY-0003pb-DG; Fri, 12 Jun 2020 06:41:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdNV-0003of-Ue
 for linux-rockchip@lists.infradead.org; Fri, 12 Jun 2020 06:41:27 +0000
Received: by mail-pg1-x543.google.com with SMTP id t7so3684902pgt.3
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2020 23:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VZ/BwdmGkBFMIYL+4deXgcIl5rwY9fNYUfDELeT0SXQ=;
 b=QZzNsedOdCaCAAjJ4kwNurEVRHIiRZ6ijFZVdcCsAB1caNeihFHvlt2aQ7h/HX0vc2
 fMcNn5vuUI3FEsUIUPKco9FvFe38VwLw5yIZz4AB96C1nUl3o7B5UjifMLRZWuT0NMX5
 7j10vEBEpwYeOM8PhodxPH9gZ6Escxi2np13A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VZ/BwdmGkBFMIYL+4deXgcIl5rwY9fNYUfDELeT0SXQ=;
 b=bKISvUvNYZ69lc1Cd5bS1RX+ojTPey12WqyrqMP0+K25acTLtB1a9hIfZTOeRDwpj+
 qJar7mWrXzDtdn1Th1r82Wxy/igNFn2r2MAO5COPZsMtvOOwiiz5Rj8hYfC5au4CTzz0
 1eLEpIo7/ryT2ZnH5gLIM1ab09oHtiF9Ff+DYTLgc7DM31zSgIIR7Z8XVgxh3kcZaOzb
 GQhtw5PQHh/PUL6rrjLEwJLUz0lFYfew1uylkwiY81RxVTO459RphPfehn0GHVzWLfqv
 3EhM4g9zIJGrL+I8Z7C7oEBCVC4Pw3ZK3i/gu/9HxuEFIcmp1M76k2b10IKj6/bcWaYV
 I/ng==
X-Gm-Message-State: AOAM532wJCPEK1G4iwg2Jja2vsyr15yfbmqhwzHAEkpjMks6lkZeujKZ
 CfNwW3dVlye7dXFRdiBTLhSUxQmkJ+U8Tw==
X-Google-Smtp-Source: ABdhPJzwulwnXrEIRw694i4Vsza7+z1D2ni18y6mZDKMT1yJYFY03BKX8BiFvjiebriiqdFXFHoR6w==
X-Received: by 2002:a62:3103:: with SMTP id x3mr10156554pfx.130.1591944085489; 
 Thu, 11 Jun 2020 23:41:25 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b5c9:c9f3:725c:9867])
 by smtp.gmail.com with ESMTPSA id j19sm5033878pfn.109.2020.06.11.23.41.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 23:41:23 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH] roc-rk3399-pc: Update ENV offset, size
Date: Fri, 12 Jun 2020 12:11:07 +0530
Message-Id: <20200612064108.459227-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200612064108.459227-1-jagan@amarulasolutions.com>
References: <20200612064108.459227-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_234125_986449_3078EB0D 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Adjust the ENV offset, size to fit into all images
on 16MB flash.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/roc-pc-mezzanine-rk3399_defconfig | 4 ++--
 configs/roc-pc-rk3399_defconfig           | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 7906948374..595f052cb7 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -1,8 +1,8 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
-CONFIG_ENV_SIZE=0x6000
-CONFIG_ENV_OFFSET=0x460000
+CONFIG_ENV_SIZE=0x8000
+CONFIG_ENV_OFFSET=0x3F8000
 CONFIG_ENV_SECT_SIZE=0x1000
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 046fb73858..1c4db3443f 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -1,8 +1,8 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
-CONFIG_ENV_SIZE=0x6000
-CONFIG_ENV_OFFSET=0x460000
+CONFIG_ENV_SIZE=0x8000
+CONFIG_ENV_OFFSET=0x3F8000
 CONFIG_ENV_SECT_SIZE=0x1000
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
