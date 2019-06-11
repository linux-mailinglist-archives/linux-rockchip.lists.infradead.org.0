Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C5F3CF74
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3zHPPzyXxaMVFZxTCh98E+s9fdX61dEGI5FQI9rd7M=; b=QEomUrcSvXigf6
	M2Ig0aNSofvQHyOtIGLj1afsGyEguqYVLQge6sUwJ7HRNpcO6foW4NxBME6/2nhaXnufYess2zH97
	osXlyF86pBZodBdg2vnmQ5VLHXfuKUVTYLptLCMGqIDLTVoIaI6iLdPyrizYKJdIIIQUTlqTECu51
	eEfDcgEkVR+0d+B+GZpTh5Zzpn4GrshK3QENUQx4cCx7vsaEwdaIB4pAik4F3IzGf/CddqVNN4fmD
	c6LoCBJSYI0GZKyFXiTByUlyCkt7tmIt7D/3L3ZYnTm7c52wR6Q7ASvb/3BHjGBbFNtF0QWbvlyEF
	uddAIwHEx5KF5/NjSu4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai88-0003oq-Jr; Tue, 11 Jun 2019 14:52:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai84-0003mc-Fp
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so7617406pfq.0
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HMxONh/KgJVsT04KApNrzG3DAJ+oZ016DpNMV5h196I=;
 b=enuhfKBCJLvKo2ssjbGsut1JSNtQeTw27NdDm1Gy564TijVVPmURPK/ySwrQAbz45O
 cZEBLh4CWBhoK6cQ2sB6oDZ+IpyGbYG18YuI05kMPnCPDUhSW4uqL9XGeYcI/2IH0Ol1
 5w+m6jf0PLTcxTgHU3yE0UOEjaSPoTi/G3U4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HMxONh/KgJVsT04KApNrzG3DAJ+oZ016DpNMV5h196I=;
 b=C/xxImBfg3YOCY5e45jUb4YoEagqsUJWOyOUwf8RUuIe1I/a/8wUYtOKP6p26G08T6
 1muOkkMyxLtbg6utpFhnCeVDstwkr6ytRU1RrVW+BDPvOukwOYt4bTT7SdIBzMI+BKXV
 tjmm3HK07/G4MGZBNlXz+PxaI8mGchfP7MT5ZsRCRtO87Z6Df2VMkNaHDGpD+vJrTy73
 0qk8c0H3j0DWvPx68VdFmcPtr4EBba+6zPsQzCWbZ4H6NEUCh85kM63NgPqNF+tyQy1o
 gCJ872/e58DarRW66BdB09hpsHF+GM6CyS8apKpNe3tlFN09eGtS+x5sjSzF0BmkcDQG
 3ciA==
X-Gm-Message-State: APjAAAW1xMNayAsLajGMcTqauhDSO0HK3eHGe+Tu1SH3OaB+SJ+e2poP
 ART0uM4ZlCxy8xb3t+MsVbg3Jw==
X-Google-Smtp-Source: APXvYqxv2UdfxOTm7GU6Ngj7ZD6Z9IrmLXKwlO0P6q9ap5h3x1/RpnZ+dSYGShKEDB9Cc1Uh5lnqzg==
X-Received: by 2002:a65:42c3:: with SMTP id l3mr20774745pgp.372.1560264723534; 
 Tue, 11 Jun 2019 07:52:03 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.51.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:02 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 03/92] ram: rk3399: Add proper spaces in data training
Date: Tue, 11 Jun 2019 20:20:06 +0530
Message-Id: <20190611145135.21399-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075204_552954_AF9E6FD8 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Add proper spaces in the code of data training functions.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 8191ab6176..b0850a88a0 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -620,8 +620,10 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_100 PI_CALVL_EN:RW:8:2 */
 		clrsetbits_le32(&denali_pi[100], 0x3 << 8, 0x2 << 8);
+
 		/* PI_92 PI_CALVL_REQ:WR:16:1,PI_CALVL_CS:RW:24:2 */
 		clrsetbits_le32(&denali_pi[92],
 				(0x1 << 16) | (0x3 << 24),
@@ -651,9 +653,11 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[100], 0x3 << 8);
 
 	return 0;
@@ -670,8 +674,10 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_60 PI_WRLVL_EN:RW:8:2 */
 		clrsetbits_le32(&denali_pi[60], 0x3 << 8, 0x2 << 8);
+
 		/* PI_59 PI_WRLVL_REQ:WR:8:1,PI_WRLVL_CS:RW:16:2 */
 		clrsetbits_le32(&denali_pi[59],
 				(0x1 << 8) | (0x3 << 16),
@@ -705,6 +711,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
@@ -726,8 +733,10 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_80 PI_RDLVL_GATE_EN:RW:24:2 */
 		clrsetbits_le32(&denali_pi[80], 0x3 << 24, 0x2 << 24);
+
 		/*
 		 * PI_74 PI_RDLVL_GATE_REQ:WR:16:1
 		 * PI_RDLVL_CS:RW:24:2
@@ -764,9 +773,11 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[80], 0x3 << 24);
 
 	return 0;
@@ -781,8 +792,10 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_80 PI_RDLVL_EN:RW:16:2 */
 		clrsetbits_le32(&denali_pi[80], 0x3 << 16, 0x2 << 16);
+
 		/* PI_74 PI_RDLVL_REQ:WR:8:1,PI_RDLVL_CS:RW:24:2 */
 		clrsetbits_le32(&denali_pi[74],
 				(0x1 << 8) | (0x3 << 24),
@@ -805,9 +818,11 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 			else if (((tmp >> 2) & 0x1) == 0x1)
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[80], 0x3 << 16);
 
 	return 0;
@@ -822,13 +837,16 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/*
 		 * disable PI_WDQLVL_VREF_EN before wdq leveling?
 		 * PI_181 PI_WDQLVL_VREF_EN:RW:8:1
 		 */
 		clrbits_le32(&denali_pi[181], 0x1 << 8);
+
 		/* PI_124 PI_WDQLVL_EN:RW:16:2 */
 		clrsetbits_le32(&denali_pi[124], 0x3 << 16, 0x2 << 16);
+
 		/* PI_121 PI_WDQLVL_REQ:WR:8:1,PI_WDQLVL_CS:RW:16:2 */
 		clrsetbits_le32(&denali_pi[121],
 				(0x1 << 8) | (0x3 << 16),
@@ -845,9 +863,11 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 			else if (((tmp >> 6) & 0x1) == 0x1)
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[124], 0x3 << 16);
 
 	return 0;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
