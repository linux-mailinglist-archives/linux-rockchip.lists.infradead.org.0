Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200776A7DF
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 13:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+eUbRYPVfSw1+CjG7WAYLBf3xjrL22ODj1JTmc4ppg=; b=OqEaAgI8pRIkXg
	5V/ssLzmxpmNYNhJFxd3HyJQrxDjqEVd0nRGQ2lOsNL2b3kSEKqRtKMmKsnskScgPwcf2G+rIajf0
	TekzEoejJ/b9NOhKvB7QzhW7qrQ14c4bAw70sfNVskTTn/T+9e2f+CBQwOaij67/udYZTM18vL7/t
	rrnrm2XnH+LDutdRntgXKeUvJis+sUF7PS0AA8ZPeMpPkXhPT4khAnLTisozBubNrjcede4/leQ4A
	8/ksJILD8VLjeofukCvFKQ/GmonSz+s2BNCadm1MXyYLh5wrk5xJzxAhLMKSeVuqH7pR4+mSaDvwO
	KqEtEw89pCHP3ZjZqLzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM7O-0004oG-RV; Tue, 16 Jul 2019 11:59:38 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM5s-0003aS-PU
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so9317878pgp.12
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DSJh4I00v6P/DYPfUgYi8SFwSbharXXL/nmePhcC06o=;
 b=P4sArob+deE2aSpOHzBZ4CFDalSj9xpRGGnjDtju9qzqJFir5nMWy89wDM2hEYATGO
 XVRusMOb1L0449rjVxQgN6FJWfbcbQDgh4exkuNsE7COBKtHS+Qh1bo8IDVvn9ewtwoZ
 aS41YeN+dv7myk9lEtunoMS+PijLEgfZ3L6qk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DSJh4I00v6P/DYPfUgYi8SFwSbharXXL/nmePhcC06o=;
 b=pE1dm/sTGassRzT7iOoJL0kMFYkOrKooCyzkseB0TI3j5u2z42/WxYKD0TEC8e+eul
 DjrAUdG4OOiU9kO8aIUh+KRy6qg+2r4x3AuKMdbdnMVPC96xPElAKqgy7VaT3JRMKOrz
 XGdqhnEG4Q3+OnuhcBbbacu0Sv3JTFvU2Dz61FwzNiDzDI9aON/koih6Aq4ZV4QJ20pq
 UOxiAvmZMYRtbLS5ln46m2bgiH9pkBSlsX8ZsVNZ4amXBd99bx3EDZvdcAui+59Zhyp0
 KP2i12hPLJ+8vk3AvCwzmV8zL9CDj0SeLUHIJDNYAKFTcx3pVIZEUE4hbWzcyH2npANy
 Ir+A==
X-Gm-Message-State: APjAAAWFPVhbSQ/pfu7Q0ORVWW/mMGcgTOSJi/Vr57jUh3ildQn7SmRQ
 uswLNuB12X7/vLfTc3Of9WYpsA==
X-Google-Smtp-Source: APXvYqwBzNhsubMojEFrxeI62hF3DfNeTBq0aaap9O3lIWnTakrq6hvVwDE44XE3vlE72p1cqyb3mg==
X-Received: by 2002:a17:90a:2228:: with SMTP id
 c37mr36120778pje.9.1563278283835; 
 Tue, 16 Jul 2019 04:58:03 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:03 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 02/57] ram: rk3399: Add channel number encoder macro
Date: Tue, 16 Jul 2019 17:26:50 +0530
Message-Id: <20190716115745.12585-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045805_106720_E5F4C96D 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add simplified and meaningful macro for channel number.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 92a4c485c2..076afe2ae3 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -73,6 +73,8 @@ struct sdram_base_params {
 #define SYS_REG_ROW_3_4_MASK		1
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
 #define SYS_REG_ENC_DDRTYPE(n)		((n) << SYS_REG_DDRTYPE_SHIFT)
+#define SYS_REG_ENC_NUM_CH(n)		(((n) - SYS_REG_NUM_CH_MASK) << \
+					SYS_REG_NUM_CH_SHIFT)
 #define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
 #define SYS_REG_RANK_MASK		1
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index f58836c037..830311ffa9 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1077,7 +1077,7 @@ static void dram_all_config(struct dram_info *dram,
 	unsigned int channel, idx;
 
 	sys_reg |= SYS_REG_ENC_DDRTYPE(params->base.dramtype);
-	sys_reg |= (params->base.num_channels - 1) << SYS_REG_NUM_CH_SHIFT;
+	sys_reg |= SYS_REG_ENC_NUM_CH(params->base.num_channels);
 
 	for (channel = 0, idx = 0;
 	     (idx < params->base.num_channels) && (channel < 2);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
