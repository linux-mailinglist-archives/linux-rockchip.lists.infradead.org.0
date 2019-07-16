Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF66D6A804
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqfk1CxszKIxTcJIutl1qtehwWH50BTunymaS01FwL0=; b=alL+npKbrs6UCR
	oienQepoJw73IJ3JljSGhxAXWn1SXFKFzjeKrYU/AD3qVZQikoTKqdl3qCk47SGLhZ/qku2/6P4RM
	3/vcIf7BqmBW+eErZL9RdtVlsoQw4c0KmjBECrrVfJ9uv1NMfZA9EWbg60CnBQpu73T2UKiOosuwD
	GwFFBy+HxvBmxMusKGcGwFH9ZfQ/YQIDXF/dlizJkqNmre+KmVpoD3gS0FEn3ewL1KJoLkeHkpKv7
	XugGx9B1AMooGPjgsgu1hm2RM2JK55Iie+i7f2L8jMWwuYrr7w0D1/Zb2X9NoX9eFDMsvvYVryWEY
	Lw5kjQpB/gM2xYXUV63g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9Y-0007tr-7h; Tue, 16 Jul 2019 12:01:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7U-0004ue-Cc
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id i189so9007188pfg.10
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=35O8lHuctuEuK/510PsjVw9EI596auqTMOJ6mksNslA=;
 b=TDMpdvzhyLTrg5bvwwpg28smCIvF1+yimsuYnSBsnmu3bLoYv1xc53W3Kd6YsnBiB7
 8s3dfd/MaQWG69oSAOn/3kSlHMENTgmBbApmiChpFEdqQp/gJYtdjd8YnfjjqrQio3ED
 ogry7BY+rINFUx3Bjc5RHHBNNjFTYHUGtQOt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=35O8lHuctuEuK/510PsjVw9EI596auqTMOJ6mksNslA=;
 b=LMuxsFNspSCmfopP6B5pmG/V/4P7Uh3tmZiX/3YG8GVBmeKdqtaw3xw2m8lJ+CLJSF
 z3ggu54hPKTYS7aTnABPgV2+gHDfu4s/ADDRnPHgv/ho3gXGFT3FLeVsOwnM1vn97i4A
 PyArz6s5Pw/DjCHsxlrcvW4QQ22TtCUuG7DyqsQgina2qiolziZOuqzyDkWTY2ObNQ/A
 H3aDm+vn7Xpv5bed5bgOT40ph/3dqn2pnLCuE7RFFSeju8NTQvjvBY7ggDfK+ec+E6i3
 j/6qRNzTIu7PbDcS1yR0LkK7EO8bBvWTSoqD70pPNRRqk7Jvs4Uq6rPNO7KiWhj0rFV8
 wG7A==
X-Gm-Message-State: APjAAAUVlkEugh/UHwsP9Ez4eRV2CK+FL4JBT7WnnzAzGdm/EXXemUqm
 bJYxA+xEi2jWXC89hb8X6s+03Q==
X-Google-Smtp-Source: APXvYqxr40gpO1FNuQUKFjQHH9qM96quyDbEPgzK9J/i3COY4P+HzdsVeIU8551gLGfuSzxgSyV23A==
X-Received: by 2002:a17:90a:a613:: with SMTP id
 c19mr36426805pjq.17.1563278383051; 
 Tue, 16 Jul 2019 04:59:43 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:42 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 30/57] ram: rk3399: Map chipselect for lpddr4
Date: Tue, 16 Jul 2019 17:27:18 +0530
Message-Id: <20190716115745.12585-31-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045944_611247_F7AB8EB2 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Assign desired cs_map values for lpddr4 during set memory map.

Initial cs_map values is based on the sdram parameters, so
the same will adjusted based dramtype as LPDDR4.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 2ab10da53f..7689711a99 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -188,6 +188,16 @@ static void set_memory_map(const struct chan_info *chan, u32 channel,
 	clrsetbits_le32(&denali_pi[155], (0x3 << 16) | (0x7 << 24),
 			((3 - sdram_ch->cap_info.bk) << 16) |
 			((16 - row) << 24));
+
+	if (IS_ENABLED(CONFIG_RAM_RK3399_LPDDR4)) {
+		if (cs_map == 1)
+			cs_map = 0x5;
+		else if (cs_map == 2)
+			cs_map = 0xa;
+		else
+			cs_map = 0xF;
+	}
+
 	/* PI_41 PI_CS_MAP:RW:24:4 */
 	clrsetbits_le32(&denali_pi[41], 0xf << 24, cs_map << 24);
 	if (sdram_ch->cap_info.rank == 1 && params->base.dramtype == DDR3)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
