Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3BF3CFD1
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4K77fb675fSi8a/jlGBJkunK8H050r6Cyl/QD+jvJIc=; b=A2RJbG/gIU02cO
	j+PlMW1idqMiNxPEdgpq8U0VU8dzyEMV4JCbP5uWt7ZLstpL1NIeNkB46Wwc9oM5qYQUVzDNeva89
	dVdIpTbpT0UwMpOLJgIbjCZFZXGJHwk8p8FhCA2w0br6dxd8/lEBd2hiwUTzwe9bpcsgYoh39txow
	bMHPqaaLojGWH51Do9/YTTlqZwjLifRh6KfHACe1LZ7mGnQM9rD24IkUwLpYBqhdFLl73tFU2lj6v
	OevBN5JBlwqwG9Ri5QZ75bY77jZR1ZGSgVExrZYwOrEUIjWaU++qAZiQL3T8XpmOZmCCZgQfZ6gPc
	t6zFBlXNO1U4nqNets4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBu-0007mL-2u; Tue, 11 Jun 2019 14:56:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBq-0007kf-IH
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id w34so7098889pga.12
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C3pvVFe0j7lJkswUINInjiKgniwvXCUL5KajZ1QFEME=;
 b=Wug8ICFZ1LHzVC0/NIByp5p/0OOAc/ZKhptb1JRVuATF9GhO4wZWgDGF2Wu0vNOS4w
 S6xHVbAmJL6ggaPldKJNM/XsFGLFaWEB1uYSoD8NR2kkTPAdJ7ongKVsfF7COlEE2cn6
 oaQKSmUO9TIYRJHB3/OJTKzCDcHcshZPNfBzc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C3pvVFe0j7lJkswUINInjiKgniwvXCUL5KajZ1QFEME=;
 b=TiQWmkfjcMcw8PQAaU6SIOl6sraXlX/V7jEtfGYBbWX/6f9q83iJd/bBNhi8e1UcZj
 CUA7IVNNOgwG3tciVPwVLZpyiQtnmRo6LEj/X40iEpLTnQNpN2C29DqIDQoceptNHAj7
 BBH1WABs8sD7J4ThTYf8qAZnNU4OZHqTA+iyeLMs3AURyo4r9H0W8SkoPC3ccqksL6J2
 gDn5kyXoVc+OZfktmBBIsNHLOo/bmdyWe9OLc8NM+5pxK2TZ1rCsayvg2srpqF5YoM7c
 6DAynHPCFKqhxUL+JAo20A40pgNSR3jD0hmiNDd44w0pIVlrNvGe2OHHzaAx8Fsy9XeJ
 YYjA==
X-Gm-Message-State: APjAAAXCGHXM9N87EgSyddfnap1aM8Tw1JFfZQ7zliiFuidpXnnif+DG
 R5/w8x1GsLBor/qzsQ6RmAoWkQ==
X-Google-Smtp-Source: APXvYqzuIy7/JR0w/9iWaaqmoc+7FzFCra8EGoQCQpWII/oLj7kPPqk4P/3vey5HqFVkoN7/HbaXBw==
X-Received: by 2002:a17:90a:2244:: with SMTP id
 c62mr11228065pje.29.1560264957974; 
 Tue, 11 Jun 2019 07:55:57 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 62/92] ram: rk3399: Avoid two channel ZQ Cal Start at the same
 time
Date: Tue, 11 Jun 2019 20:21:05 +0530
Message-Id: <20190611145135.21399-63-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075558_671397_3B387D53 
X-CRM114-Status: GOOD (  12.43  )
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
index 3d26cede77..1abeee7198 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -555,6 +555,20 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
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
+	if (sdram_params->base.dramtype == LPDDR4 && channel == 1) {
+		tmp = ((sdram_params->base.ddr_freq * MHz + 999) / 1000);
+		tmp1 = readl(&denali_ctl[14]);
+		writel(tmp + tmp1, &denali_ctl[14]);
+	}
+
 	copy_to_reg(denali_pi, &sdram_params->pi_regs.denali_pi[0],
 		    sizeof(struct rk3399_ddr_pi_regs));
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
