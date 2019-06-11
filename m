Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF013D003
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUwNkuSd6vQLp2CHmrBzqNUC6NkXavPK4zrjD2ZsG/E=; b=C/dHa3JTZZNmFY
	s6YFS4c8sfDeb3mto9wWODraao7BBxKbtugmzzfdgwygtxIE2ROyCnC2pY8MdS4tX6vvJniUK1G/8
	fDSoH+CEfNYxapsbzI3QUyl9fVX7GHHBFnW8mUtDKEDW0WctFd5kzTkaakjQxhAAmfEuQtT9ZvFC5
	eAbvY+LEPM/I82C4HepdtK6x3phgI7ejUKG7Zq94TUt1ABWV29iJt2PyIyHnlmYYMBYUNifAumXh0
	3znfoo3yTk3te4BTFf592THpZnNmxalO9yblx5dRBHR1MlDDTqscEuE5NMYStlh5bR3zgCpeImdik
	dUfLhuAQqBobWPsgL7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiDq-00012v-SH; Tue, 11 Jun 2019 14:58:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiDS-0000kv-UG
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:40 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so6765842pfa.4
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=veKQnxdE/O+afSbAdRG6AVexyoeVeop4zur5cBaAxQY=;
 b=MewqXZZdYCTZcy4F7ep0n8zZcJFdZ57LDk6NPdHraXN0/mPIPzAGsNOlJKw5lwCcJ+
 2e8zA6ieJdMCCjEW1jqYKIxjFh3uTUM4dQEeoZ2cTcQ5XHTxPU3wSB1U05cFfaNdaEFb
 68dfXrrQY9sva+piRU/Op/yfAjibXvhx+ySrA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=veKQnxdE/O+afSbAdRG6AVexyoeVeop4zur5cBaAxQY=;
 b=glDYBL3G/LzNIprOVuswjjscI2L/Dxewr2Mrq6ekB1RkjXJDOoUT0v28PU7FBtQX7C
 gHKdRaihDhU9TltELZhZq6Ak+9jUtz6ab7XZ5V2mhZvZGbvzkfjESnmxSlVfULAeM5xw
 UJDxPiXZb0maFd3+fsUwh+nhazTjrsXhe/sWnAOznaZTy3z8As5f885bHHCXXt7si55J
 P8IQ1zkpv0X3zXiVlQgoahzs0m5Ib219BAIsx8vlpUnyz8h5f3XifThyB99QAvdH2GY4
 B07hWzQfOuWdVCjiF1K7BFIuaSsJ37LSUB1xmoPFwmLOShm5LeMFeEvLuvwfXMiFlKdR
 MlRA==
X-Gm-Message-State: APjAAAWwOFotznkreS1Rb3u81mIbKFRbv2+jfCiXttIutnPegkLLlpHY
 h85gfDXuEq7CvCqFYKxCp6R01g==
X-Google-Smtp-Source: APXvYqzpQWToWZS4Tfq+rbI7vOx8JOgzdQCqllYOu+qQ/9M3tkEr17fYKW9rmzWbNyDo5JVv0Ej0qw==
X-Received: by 2002:a63:e24c:: with SMTP id y12mr20610711pgj.276.1560265058277; 
 Tue, 11 Jun 2019 07:57:38 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.57.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:57:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 88/92] ram: rk3399: Set lpddr4 MR12
Date: Tue, 11 Jun 2019 20:21:31 +0530
Message-Id: <20190611145135.21399-89-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075739_100030_FCCFDDA1 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Set MR12 based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 50 +++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index f1fb16c130..38fc8ffe63 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1996,6 +1996,55 @@ static void set_lpddr4_MR3(const struct chan_info *chan,
 	}
 }
 
+static void set_lpddr4_MR12(const struct chan_info *chan,
+			    struct rk3399_sdram_params *params, u32 ctl,
+			    bool ctl_phy_reg, u32 mr5)
+{
+	u32 *denali_ctl = get_denali_ctl(chan, params, ctl_phy_reg);
+	u32 *denali_pi = get_denali_pi(chan, params, ctl_phy_reg);
+	struct io_setting *io;
+	u32 reg_value;
+
+	io = lpddr4_get_io_settings(params, mr5);
+
+	reg_value = io->ca_vref;
+
+	switch (ctl) {
+	case 0:
+		clrsetbits_le32(&denali_ctl[140], 0xFFFF << 16,
+				reg_value << 16);
+		clrsetbits_le32(&denali_ctl[154], 0xFFFF << 16,
+				reg_value << 16);
+
+		clrsetbits_le32(&denali_pi[132], 0xFF << 8, reg_value << 8);
+		clrsetbits_le32(&denali_pi[139], 0xFF << 24, reg_value << 24);
+		clrsetbits_le32(&denali_pi[147], 0xFF << 8, reg_value << 8);
+		clrsetbits_le32(&denali_pi[154], 0xFF << 24, reg_value << 24);
+		break;
+	case 1:
+		clrsetbits_le32(&denali_ctl[141], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_ctl[155], 0xFFFF, reg_value);
+
+		clrsetbits_le32(&denali_pi[129], 0xFF << 24, reg_value << 24);
+		clrsetbits_le32(&denali_pi[137], 0xFF << 8, reg_value << 8);
+		clrsetbits_le32(&denali_pi[144], 0xFF << 24, reg_value << 24);
+		clrsetbits_le32(&denali_pi[152], 0xFF << 8, reg_value << 8);
+		break;
+	case 2:
+	default:
+		clrsetbits_le32(&denali_ctl[141], 0xFFFF << 16,
+				reg_value << 16);
+		clrsetbits_le32(&denali_ctl[155], 0xFFFF << 16,
+				reg_value << 16);
+
+		clrsetbits_le32(&denali_pi[127], 0xFF << 8, reg_value << 8);
+		clrsetbits_le32(&denali_pi[134], 0xFF << 24, reg_value << 24);
+		clrsetbits_le32(&denali_pi[142], 0xFF << 8, reg_value << 8);
+		clrsetbits_le32(&denali_pi[149], 0xFF << 24, reg_value << 24);
+		break;
+	}
+}
+
 static void lpddr4_copy_phy(struct dram_info *dram,
 			    struct rk3399_sdram_params *params, u32 phy,
 			    struct rk3399_sdram_params *timings,
@@ -2245,6 +2294,7 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 	set_lpddr4_dq_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 	set_lpddr4_ca_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 	set_lpddr4_MR3(&dram->chan[channel], timings, ctl, true, mr5);
+	set_lpddr4_MR12(&dram->chan[channel], timings, ctl, true, mr5);
 
 	/*
 	 * if phy_sw_master_mode_X not bypass mode,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
