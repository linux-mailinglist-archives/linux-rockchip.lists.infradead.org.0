Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DAD3CF77
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oo+HbQ/4FHw0OCG5VZbDNY3G5zz8fo3F1i+x9jaStbc=; b=nMLWrghgpDzFnE
	9NrWpORwa8KD+9PahIZMZJJyWx60lr9NSWDAYkOAlCH+B4xhDyz5NxXOvSMNGoRl4nN46MAPu759B
	Jo3s/D+NABLJKtxCsOVXUjwjFlydGjJ/cisUj3Ip3/6Gn8GU6Y+isme4+bQA0nzcRAoggiAXuY44y
	Qw9zM8uqfSCLrJ6ZCEhPBFVRXxO9bsjGflKAVAxEaysaBHpiRYOHw5YIMtKXOWd12434ZQdt8ZfPg
	gxr3UYHAwtySYr8J3jDu7FRFPf0Pi80PfOOTWjyG24Azp2FK3SDjJUh3Dttjxs2LckBq5UVP9CJEe
	0ptN3BIPF/f9epia9TLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8C-0003rx-PG; Tue, 11 Jun 2019 14:52:12 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai87-0003oo-TY
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id d30so7105455pgm.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WeG8VUoLmUE+nNNbNtlE+5aIWXzGf93n9z29VHP2zqo=;
 b=CQOq0WLRv9fmwB/kVu0o/J50blWEcswwcQKes8aoHSAtTfO+ruLcwMrVDFzxJNrTn3
 A7FlNxkUvj7dwScs4wGEBuxURSGyRsfGYFwjAdgFhyNZTW32nREashQl3/6zfkm5sdUG
 vDgYhvWD+lzVxBIrsKRlVAdzMJM/fdgBP2bYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WeG8VUoLmUE+nNNbNtlE+5aIWXzGf93n9z29VHP2zqo=;
 b=V4nrLwxbkqshy8jhQLDd2tno3wSj2Awm81p49PoPllnpT8jOs9ODEww6kmRh3fr9XQ
 bgf98wY3nTvLl9VKQFClIKpJldxExVqv1Pe9yCzgru/qaB+TM1aM2cJAWyFSTROiMB6p
 C++vcSynjsND2bZzuz05Dn3vLVPcPx5mkuiZ4yujH7MCoOhcmCTS95rDVzWHd/pxBvqE
 uVXbXLDlUkl9/UDbBTmbhrPH6JONLyLOxmkiM4/i7/lb1wo1kufeXK2THXjgcCNgG1KL
 mMYbMDFGCLCCus8Wn00nkdAVJfPKDpVC3z3eJC0NlQ3shIvDs3jUpENrw1SjYCl+TR7k
 TmSQ==
X-Gm-Message-State: APjAAAXP/iW5bLxz/Pkb9LsMehBuedg+M9rIvqjTixb8pO6/0MW+Zxg2
 DN8Ve6C7ypP5hRmqZhRSNJI8DuE5Z54=
X-Google-Smtp-Source: APXvYqzYylbcaao5YVhBazU0YrhTjDs8ItP5CdJv1OXnai4EtOl0SUzCC6KsZeMbOZIfRArl7R7dEA==
X-Received: by 2002:a62:fb0a:: with SMTP id x10mr58130760pfm.224.1560264727114; 
 Tue, 11 Jun 2019 07:52:07 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 04/92] ram: rk3399: Handle data training return types
Date: Tue, 11 Jun 2019 20:20:07 +0530
Message-Id: <20190611145135.21399-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075208_056250_86CE6BD2 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

data trainings calls like ca, wl, rg, rl, wdql have proper
return types with -EIO and the return type missed to handle
in data_training function.

This patch, add proper return type checks along with useful
debug statement on each data training calls.

Incidentally this would help to prevent the sdram initialization
hang for single channel dram and when the code is trying to
initialize second channel with proper return type of relevant
data training call might failed.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 50 ++++++++++++++++++++++-------
 1 file changed, 38 insertions(+), 12 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index b0850a88a0..73732e0767 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -878,6 +878,7 @@ static int data_training(const struct chan_info *chan, u32 channel,
 			 u32 training_flag)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
+	int ret;
 
 	/* PHY_927 PHY_PAD_DQS_DRIVE  RPULL offset_22 */
 	setbits_le32(&denali_phy[927], (1 << 22));
@@ -898,24 +899,49 @@ static int data_training(const struct chan_info *chan, u32 channel,
 	}
 
 	/* ca training(LPDDR4,LPDDR3 support) */
-	if ((training_flag & PI_CA_TRAINING) == PI_CA_TRAINING)
-		data_training_ca(chan, channel, sdram_params);
+	if ((training_flag & PI_CA_TRAINING) == PI_CA_TRAINING) {
+		ret = data_training_ca(chan, channel, sdram_params);
+		if (ret < 0) {
+			debug("%s: data training ca failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* write leveling(LPDDR4,LPDDR3,DDR3 support) */
-	if ((training_flag & PI_WRITE_LEVELING) == PI_WRITE_LEVELING)
-		data_training_wl(chan, channel, sdram_params);
+	if ((training_flag & PI_WRITE_LEVELING) == PI_WRITE_LEVELING) {
+		ret = data_training_wl(chan, channel, sdram_params);
+		if (ret < 0) {
+			debug("%s: data training wl failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* read gate training(LPDDR4,LPDDR3,DDR3 support) */
-	if ((training_flag & PI_READ_GATE_TRAINING) == PI_READ_GATE_TRAINING)
-		data_training_rg(chan, channel, sdram_params);
+	if ((training_flag & PI_READ_GATE_TRAINING) == PI_READ_GATE_TRAINING) {
+		ret = data_training_rg(chan, channel, sdram_params);
+		if (ret < 0) {
+			debug("%s: data training rg failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* read leveling(LPDDR4,LPDDR3,DDR3 support) */
-	if ((training_flag & PI_READ_LEVELING) == PI_READ_LEVELING)
-		data_training_rl(chan, channel, sdram_params);
+	if ((training_flag & PI_READ_LEVELING) == PI_READ_LEVELING) {
+		ret = data_training_rl(chan, channel, sdram_params);
+		if (ret < 0) {
+			debug("%s: data training rl failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* wdq leveling(LPDDR4 support) */
-	if ((training_flag & PI_WDQ_LEVELING) == PI_WDQ_LEVELING)
-		data_training_wdql(chan, channel, sdram_params);
+	if ((training_flag & PI_WDQ_LEVELING) == PI_WDQ_LEVELING) {
+		ret = data_training_wdql(chan, channel, sdram_params);
+		if (ret < 0) {
+			debug("%s: data training wdql failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* PHY_927 PHY_PAD_DQS_DRIVE  RPULL offset_22 */
 	clrbits_le32(&denali_phy[927], (1 << 22));
@@ -1048,7 +1074,7 @@ static int switch_to_phy_index1(struct dram_info *dram,
 		clrsetbits_le32(&denali_phy[896], (0x3 << 8) | 1, 1 << 8);
 		ret = data_training(&dram->chan[channel], channel,
 				    sdram_params, PI_FULL_TRAINING);
-		if (ret) {
+		if (ret < 0) {
 			debug("index1 training failed\n");
 			return ret;
 		}
@@ -1093,7 +1119,7 @@ static int sdram_init(struct dram_info *dram,
 
 		if (data_training(chan, channel,
 				  sdram_params, PI_FULL_TRAINING)) {
-			printf("SDRAM initialization failed, reset\n");
+			printf("%s: data training failed\n", __func__);
 			return -EIO;
 		}
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
