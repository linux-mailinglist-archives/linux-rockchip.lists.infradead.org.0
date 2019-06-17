Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDD847B7E
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJnKS1+8BaBlwtHA6fNiBt12AG4zzGZIvdD8AY860xA=; b=WQH6MP5FO11d+I
	cVF8+3YxpYbUnNsnuzihdmszvDjFyB5kIE8cVFeYdAnDgurBWJCticYAfpRj/b+vub1q3EFp6L67I
	Pmeg8rcPVQtPweSn+/4JESeuKuBqETtSsPgIMdJSqqX1z1tluVjMxssnqRBMOIWFwTIz2uF7mtE2g
	WwDo/g5ZbmEBeDOfMlb6NMVN8xwJB6miFMMifZqgjaVQjU5XEiXjzT+p6kAtYEAEFOl0FKlHFVcOI
	amM8+3OdidJNGKul8PCvwi4ECEkNo6+kC230vRI19bQXNoDMBeg/0CP9mSX1iXytCn9qI0G+YLior
	qWPN8vzf9z8wcEGxgcRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGn-0002H7-SQ; Mon, 17 Jun 2019 07:41:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGj-0002Dr-6O
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so5186577pfg.10
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LOUCfFdXWrjphb66D3/vfNzximgRchN1Tu2BsPCYwUI=;
 b=W0f4Wclb92R5BKuq8sDrffRAlKrx7P3Da8rUg0YsM06Z/hFz9fFhOca2XBVTBZlPZ5
 5MzuQDX5N/SSbvxsdGy3yYAvq3gNCyr3+z1JvF0M/6U4iOOCGjfolGqZKtSnYUHvkBMd
 A4ArFNkdxmvNB4LNkskiNkuWrPCcJY/Q4hq3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LOUCfFdXWrjphb66D3/vfNzximgRchN1Tu2BsPCYwUI=;
 b=Xv1t9XOS7T1pY+OO/KIE6f4RyG09p9XKo1d8VKv/rwFjArqN6xvfhlxEzTMeoKKxoF
 t4snyp0p2R+xpmd9CaFgln80jyGHKTjRVbVORq7gnlG+xN5S/64dX7eSJf1m8OaLduJ+
 2YsOW7AjI6K4q7hfOUZCUbZKHiPX5n6t3DkZJnio67umTjocFQZ0t7hNoR08eg3NeZpt
 jqwkmOoNTsf0Gp0v2sx9Mv0L4j9YTfuQkWfhkJyCxjUcVyBZFjsz0U2Jxk2sQXLVkIRN
 NMJCwVVm9MgyUfC4WgN/RDUVDExcX5npi5osMfN8l9Ci49A3yMihKGfjp0s3IhtoPJUZ
 KfYw==
X-Gm-Message-State: APjAAAUfUdFkgvlT99EeUkKLwcWtKUMpvWGbY99x3dZRgdA0xHszVfp7
 H7D/PMtGpRMD1V5G1dgA+JjzAw==
X-Google-Smtp-Source: APXvYqwDE4taMWb70OZRQGGv6BHpQTvbZrwmJG6XCQKXNjx/tNsDofZuXi14Gwzrx14qplyruRMnyw==
X-Received: by 2002:aa7:9197:: with SMTP id x23mr77174311pfa.161.1560757292682; 
 Mon, 17 Jun 2019 00:41:32 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:32 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 94/99] ram: rk3399: Set lpddr4 MR14
Date: Mon, 17 Jun 2019 13:02:47 +0530
Message-Id: <20190617073252.27810-95-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004133_289926_E526BB1A 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Set MR14 based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 50 +++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 5c0914f40d..e009113d45 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1989,6 +1989,55 @@ static void set_lpddr4_MR12(const struct chan_info *chan,
 	}
 }
 
+static void set_lpddr4_MR14(const struct chan_info *chan,
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
+	reg_value = io->dq_vref;
+
+	switch (ctl) {
+	case 0:
+		clrsetbits_le32(&denali_ctl[142], 0xFFFF << 16,
+				reg_value << 16);
+		clrsetbits_le32(&denali_ctl[156], 0xFFFF << 16,
+				reg_value << 16);
+
+		clrsetbits_le32(&denali_pi[132], 0xFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[140], 0xFF << 0, reg_value << 0);
+		clrsetbits_le32(&denali_pi[147], 0xFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[155], 0xFF << 0, reg_value << 0);
+		break;
+	case 1:
+		clrsetbits_le32(&denali_ctl[143], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_ctl[157], 0xFFFF, reg_value);
+
+		clrsetbits_le32(&denali_pi[130], 0xFF << 0, reg_value << 0);
+		clrsetbits_le32(&denali_pi[137], 0xFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[145], 0xFF << 0, reg_value << 0);
+		clrsetbits_le32(&denali_pi[152], 0xFF << 16, reg_value << 16);
+		break;
+	case 2:
+	default:
+		clrsetbits_le32(&denali_ctl[143], 0xFFFF << 16,
+				reg_value << 16);
+		clrsetbits_le32(&denali_ctl[157], 0xFFFF << 16,
+				reg_value << 16);
+
+		clrsetbits_le32(&denali_pi[127], 0xFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[135], 0xFF << 0, reg_value << 0);
+		clrsetbits_le32(&denali_pi[142], 0xFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[150], 0xFF << 0, reg_value << 0);
+		break;
+	}
+}
+
 static void lpddr4_copy_phy(struct dram_info *dram,
 			    struct rk3399_sdram_params *params, u32 phy,
 			    struct rk3399_sdram_params *timings,
@@ -2239,6 +2288,7 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 	set_lpddr4_ca_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 	set_lpddr4_MR3(&dram->chan[channel], timings, ctl, true, mr5);
 	set_lpddr4_MR12(&dram->chan[channel], timings, ctl, true, mr5);
+	set_lpddr4_MR14(&dram->chan[channel], timings, ctl, true, mr5);
 
 	/*
 	 * if phy_sw_master_mode_x not bypass mode,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
