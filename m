Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD653CF9D
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wBYqUAsun5uqE3fkyeQaQ/3xQF5D0d4dT7r0ZHJfzU=; b=NHy+1HFdG/p4ij
	pDIsgJGdpPzK8az8jsz189ZNzgX6U6yuryZ/aThb6LmwaeDbB1L9VZDm7WO4CnRdhAETe++rkSj3N
	+I6Ye2OsJRu/VQxDCKr9VAdppFaqkro1wd1odhJZzn2b5bAHXUg2mRCt89+N2IjP4QnZvVxs2ea1Y
	hOUBsn1sF9hOz0mPcG+4VsNNG25wOdz1WJfUTVc6Zxbr4yTnTqP6epcJ+eIoE9ncFSlM0GbpFoyEs
	wxvq89hwm/4nn/iMQLHp/4GpfP8vv3J8k5aLaoeAWPQ7zk4cHWr8/VuNpjYcJWfeF7Y3c6+mLbIya
	+2VIXbP1sLNqkwoS+6yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAP-0005Qw-3d; Tue, 11 Jun 2019 14:54:29 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAK-0005Oq-1q
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so7104572pgv.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qgL2FaT1eaStfsj3hGDtJf5kpFbPRE60ag+y7zGYXwk=;
 b=J85+AMkkBchfQtyJ4jcSOVtkkQLUzP1XgejtDqU/UI5lFHaGNr6nHddguvIR/J4Z1X
 Wmf90xtFIvIfE3K++332ev4KrVkAMir1i2AWjJB2SS8nKt8mJxYSRoToHs3k+gGnPDeX
 7RjA2WsVTtC3wWk9F/r1gdq+XYVyBnJ33omgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qgL2FaT1eaStfsj3hGDtJf5kpFbPRE60ag+y7zGYXwk=;
 b=r6+ob6MYF0vrvlhossrYZJPRCMEhVS5i56YiVS/JDm0vk7jerxsdtueIsUHpbuIfqR
 9bwjZ3s1g+Ofo16vGVDRXvxAWguH9/3G2QZxwTlTCaozEI+QG7NS+Urmfaiahw7sLJSy
 4Xe8BTmzS9h83SJJU4S8maJ4Y5GB4QsxttvlS2GcIVwWJRJid5eeJobBFx/Nycu1WgAr
 Eab5PP0deCHiJ1pHrjhFUz71jhosHJgbIgsaAT97QzV316/vHmcyKOqnR/yltSF8vgGS
 WJEcd4RvE97Z4J8oTd6kbyxM0/Rbolcuq0DGboZQOmnLYHctBzALTHDA1Ppu7cEyX1NB
 6gfg==
X-Gm-Message-State: APjAAAWj3mE4Z5WnieOZyVUWA0DqvlnckO8IBkn1HwluIhT8HXLnbegg
 l1Ca6JeZrHuVxtrtnbXwocqYyddQgSI=
X-Google-Smtp-Source: APXvYqymZO0/fURH+9PIyDUhK0SfMN8bzxZzKYbZnMD+AdruFssuMzREvqy99HSLI0j/g2VZHhbwvg==
X-Received: by 2002:a17:90a:ac11:: with SMTP id
 o17mr27735080pjq.134.1560264863452; 
 Tue, 11 Jun 2019 07:54:23 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 38/92] ram: rk3399: s/rk3399_base_params/sdram_base_params
Date: Tue, 11 Jun 2019 20:20:41 +0530
Message-Id: <20190611145135.21399-39-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075424_091955_C46DE6B4 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Most of the ddr parameters are common in rk3399_base_params
structure and which would reuse it in another controller like
px30 in future.

So, rename the structure from rk3399_base_params into
sdram_base_params.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_rk3399.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 67044f53e5..fe25446cab 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -121,7 +121,7 @@ struct rk3399_sdram_channel {
 	struct rk3399_msch_timings noc_timings;
 };
 
-struct rk3399_base_params {
+struct sdram_base_params {
 	unsigned int ddr_freq;
 	unsigned int dramtype;
 	unsigned int num_channels;
@@ -131,7 +131,7 @@ struct rk3399_base_params {
 
 struct rk3399_sdram_params {
 	struct rk3399_sdram_channel ch[2];
-	struct rk3399_base_params base;
+	struct sdram_base_params base;
 	struct rk3399_ddr_pctl_regs pctl_regs;
 	struct rk3399_ddr_pi_regs pi_regs;
 	struct rk3399_ddr_publ_regs phy_regs;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
