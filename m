Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF09447B5D
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VuGesycpJhACCY2gfDE7ROBsUWR4iLMldanhhujA+Vo=; b=p42NTtDehglcBD
	rMyPJNyAJGVg4rs+ConSgMpNXRx2on7k+ONwedko/REkIV5e6xR1pvcqcnIJ8UprGGVA3/jdbI5jT
	CkKaTGsELUbt3iiuWIzhVA04Dnz4/5dVmKOzIUSN7uMGCT6x/9Tt+3/V9/tC9JQIIqlMxlGzBotcr
	7ZNimwzfpI/us92poef7/e+89pAE7vkLf7FhbRq1N+KPmX3GythUmMNHan6rbYwyRpGTz2HlrJCCM
	APJod5FLgucF4bLZXIDWcaa9EUNW+acqerAu6yv5LKUwzUBaSfiL2xc2tWGs9ONFB9/pEBTaC5Xsg
	cxg8bPjnnOovgP9BcGwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFC-0008Fq-Sz; Mon, 17 Jun 2019 07:39:58 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmF8-0008D8-Ac
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id k187so5318361pga.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3471SnREZ9VDNCUwaRUwTSqn728qX5vJEL72YwtpENM=;
 b=WV6K2iJ3I5HFHjJaSD+pPFsOpbLcRNEztK28qNjwywYe9s3xm0rcpBGU2Itm1xbvxQ
 C4yoEHzobauIDNWHIAyeHXErGzgQyXxrMgVoRoBpQRXtFTBMNk+1HvKn0d9XCtlDb+oy
 1jaEpYfQggpBgcwFHIB1z8PlAeHHi9N79d1iY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3471SnREZ9VDNCUwaRUwTSqn728qX5vJEL72YwtpENM=;
 b=hhLF2V8pYhiLc0xQQVnSs0FUWVlLmTo5Yk6dLabb2Gg8aXAtfXZRj88HoGuQ+JIMDz
 2a4NnfMePspEy39Foorop4tUJUIkVSagwl7a/5CIANEhuFm0CsgbWkdn6QgKcIZFO8zR
 EOCePCj2DIddFQRHlGKv4MMzVxy7OMSlj3M1uSI3GFlCrH/+IkBMJtYkLfNLTJ5K2lWx
 6XcM2fNDWeeKIr7EfQ7AFyHYb1QFy1w1t9HsKBy86iemJnU2IcCgNfbJxmyb2PdB/UrJ
 ZwOZWY9RhL57rxEek2R8ddKWl+g05T6jEsEliVRm/0mgtIaJUEPAUOGaB4Tse9rQyj+2
 iong==
X-Gm-Message-State: APjAAAVl7QSzRuNJZ3CRJ307mOoSydRa0oQfcX/D1ZWEvotNJZ8nYrcW
 GclvNwYtz85Cm/EblAQPHxsTTg==
X-Google-Smtp-Source: APXvYqznfZbtJwy3hoKtsKBQFwG2/YlcPmB/yCxPjV7fFxijlL9CWh3+HBTjpWwe0VrbHOKFOZo++A==
X-Received: by 2002:a17:90a:7148:: with SMTP id
 g8mr17506068pjs.51.1560757193795; 
 Mon, 17 Jun 2019 00:39:53 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 64/99] ram: rk3399: Avoid two channel ZQ Cal Start at the
 same time
Date: Mon, 17 Jun 2019 13:02:17 +0530
Message-Id: <20190617073252.27810-65-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003954_402972_0389C7E3 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

It is possible in lpddr4 dram, where both the channels would
start at same time with ZQ Cal Start. If it uses ZQ Call start
then it will use RZQ.

For example LPDDR4 366 Dual-Die, Quad-Channel Package, RZQ maybe
connect to both channel. If ZQ Cal Start at the same time,
it will use the same RZQ.

It is not a problem of using RZQ in both the channels, but can not
use at the same time.

So, to avoid this, we have an option of dram tINIT3 value for
increasing the frequency for channel 1.

This patch increase the available tINIT3 with existing running
dram frequency.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 4d2310cbe6..0a5152c710 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -550,6 +550,20 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 		    sizeof(struct rk3399_ddr_pctl_regs) - 4);
 	writel(params_ctl[0], &denali_ctl[0]);
 
+	/*
+	 * two channel init at the same time, then ZQ Cal Start
+	 * at the same time, it will use the same RZQ, but cannot
+	 * start at the same time.
+	 *
+	 * So, increase tINIT3 for channel 1, will avoid two
+	 * channel ZQ Cal Start at the same time
+	 */
+	if (params->base.dramtype == LPDDR4 && channel == 1) {
+		tmp = ((params->base.ddr_freq * MHz + 999) / 1000);
+		tmp1 = readl(&denali_ctl[14]);
+		writel(tmp + tmp1, &denali_ctl[14]);
+	}
+
 	copy_to_reg(denali_pi, &params->pi_regs.denali_pi[0],
 		    sizeof(struct rk3399_ddr_pi_regs));
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
