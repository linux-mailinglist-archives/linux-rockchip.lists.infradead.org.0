Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1972B3CFEB
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijlB0/dEbzyotNBe+R8ATVm5s1m7dN4VZ8Rcb7opLV8=; b=FSgQFKNLbxIrGP
	/TVT9OnggAS3w50dZ/s5/8xSC6dc+9kDWYpPFHwcriPAi83sdYNXShnII/NSj+mr6910dskwpmX7v
	P6aCM/qSg1xEEzuxti/gDo8fOe/xG/Bfg8+rC+L9wc+kQntdaixDE/PlLyI2SaLIKndbWLnCyMaFc
	/OC6w+B6gzbZXauDE96zntpTj7wNWbEnV3dSsAqfbsYLPR+o6g4mrRaTpGzhHS9b2KQy1I1TIHkB8
	OCKwWBwXw2TuPHRoBphAgfPJp0kllsoF94bQnmGvaPujkzMs0142PrrUILbfoEa3fg2lOpRdtzKy7
	oTqEWhMvMBN9UscNd2pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiD2-0000H1-Hq; Tue, 11 Jun 2019 14:57:12 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCm-0008UX-V6
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so4305676pfp.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=epVZ5TNHwS2kL7R8kp8MIF+ns/FTazpsB8dfhp1jT1M=;
 b=rE/6Nro01+UXv9aZqQy2hBhbnIyPfOPP3fIXA4MX3h8T/xEchwMOO1fIEne7mi2LRA
 gvZWDZ2zUYQ7NjveHPSzX1HBHNJA0QVME+Jo80aoqnXVlrYcsb6KzbNOHDdON5urVslo
 hE0K4NETrNKomGXfY1DrNyVRtTQTf6R9pGMtI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=epVZ5TNHwS2kL7R8kp8MIF+ns/FTazpsB8dfhp1jT1M=;
 b=Km8lcTK/XV8sStWmC5GLrYIjMojJqNCHu3VMwGwmOJTuJZR405/I4ZD30YyqHFIxMy
 hlnULsq1GAdowm6G0eKi3s0nqqga9YhdxE+7zRey/MU+VNAZRDEiIEOxEMoQub5kEhCC
 K915iIwRmxfpc/52bQyhMRoqfaw+iqxiCs71xxsx1kUdGe1oYT+VfomRA46Qo9Hat5iL
 xnEgAXy/xBfY8FCVFk9PNKerpweIsbjvof7SIksxfZtTuLNk3g9KJWzVv3m15sn4p2GN
 4lGgvcIgRfo0bDcVzBahA7usGw2LSMh8Hc58FWmxUc4TsvxTBfqjaAv45yqUbe5/8rkA
 B+1g==
X-Gm-Message-State: APjAAAU9ZTAef1sqL7HKEcCjTvqATbEoXwh85UJlP7cruMEcB2NiZi9p
 0+0VdKvWQIm+lOH+OVwlPHrHfw==
X-Google-Smtp-Source: APXvYqwR4ExrtLeKNSl7MXoPfhpHcIqdnJnbz41n0QRa48dIY0pLVbLneywyT2v9oraDGzAvbUy3aQ==
X-Received: by 2002:a63:f54c:: with SMTP id e12mr20767978pgk.62.1560265015609; 
 Tue, 11 Jun 2019 07:56:55 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:55 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 77/92] ram: rk3399: Update lpddr4 vref_mode_ac
Date: Tue, 11 Jun 2019 20:21:20 +0530
Message-Id: <20190611145135.21399-78-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075657_170499_FE5EEACE 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Update vref_mode_ac for lpddr4 based on VDDQ/3/2=16.8%

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 618327983a..89348cf296 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -369,7 +369,8 @@ static int phy_io_config(const struct chan_info *chan,
 			vref_value_dq = (rd_vref - 15300) / 521;
 		}
 		vref_mode_ac = 0x6;
-		vref_value_ac = 0x1f;
+		/* VDDQ/3/2=16.8% */
+		vref_value_ac = 0x3;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		if (sdram_params->base.odt == 1) {
 			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
