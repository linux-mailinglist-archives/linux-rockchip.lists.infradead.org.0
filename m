Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDA747B65
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dcj9tOefHIm2f9putebH8czJkkYmlD+pUpUzAwOejFw=; b=fzwWNz8hULkvwh
	uLo3du+6MvYxutNKSbT2i7NAaE5iwJ3ITZZ9rHgJ88WbySDJRNf7ba9UKcrYlhCp0klkN99zkYHfZ
	gC+R9uWZpbcg6mkzbsR4GQ+2uEycBwHo+e86B1+aDFJJzexiT4yjZXJCHlKQ068ptM3FxrrqFAy/t
	Xm+kDUAjGOT5lm06wq5a+NhhZqoqpo+qippVn7HdAaqej0mZ9mSY+8RPJvv0OLsbjmKfEQqXhBapw
	2VfIbcA/qMrXLnaWpaJpWdGY3zupNd8ziH5a4hip42H8+pR8JbIR6DofTwJMVetOeeYNfoNPUkrwe
	iTyfxljL+WcV2iXRVfiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFT-0001C2-B6; Mon, 17 Jun 2019 07:40:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFP-0000vO-3P
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:12 +0000
Received: by mail-pl1-x641.google.com with SMTP id t7so3728013plr.11
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AIx+GSOjItOJS5Yb0e5vBjJpaDqpblMaDOWRHT/im5c=;
 b=NDih4GYpGybb7Hsns3DaWBwxhFWJe7JcaXWWjZXu6KyNOInHiUqetV1vyKj1X3r10E
 rqkLHmCj515I/0kwAKUucGQeW6HN2ZZWDQ3J1kkQ6jjlPaWTUoSEEU8/MVKVTuExl9aE
 roSGfFK5FQBjaIACmiic1T/KHeMPjWXj69ub8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AIx+GSOjItOJS5Yb0e5vBjJpaDqpblMaDOWRHT/im5c=;
 b=QESxv53Gzg1MFLfF7wfPi59P16ehD8l0Qtooq8WhbxKLVNXkmWYFjtrs7pq3erzSvI
 eLv4mDQDYb/ok84gdaGAVIixrjNHf9/NKHa9UxY467V4ZijIQmksEEW9oAaLrAQ+w3Zr
 lHkCfkJSUJRWiA5V4XI88JbuhE0MgFX5fVJfOdQ/xmwHjj7KJVKZwRvTquUNlGu5wwZM
 9lyYGOkgwkPvBFua5A+E+cQwmJ/twkoeXPsikRS1rDbyWH7JzeMtDvEanzy8sgVLwWtf
 0D/UnWI8Y9UFXjv9HZPKQoTsnnVFcgThZ9e3ER8RF2Kn9A6KLV8TZqkYJ93cx5aB1zg4
 tKXQ==
X-Gm-Message-State: APjAAAW3Vb47jRl5hYZJzMu0epFjEIaOfzt+Dcl4sGs79+EYg/1invyJ
 ou+AhWLe23rBYXoBozuxB3mY4g==
X-Google-Smtp-Source: APXvYqygWh1zv4QX+D5WMCF2bbMpClp11MEHG7EchcuQrEvJkTVyR9V68ThZ376I8g5LsSsKo5mbYg==
X-Received: by 2002:a17:902:4643:: with SMTP id
 o61mr53841167pld.101.1560757210575; 
 Mon, 17 Jun 2019 00:40:10 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 69/99] ram: rk3399: Map chipselect for lpddr4
Date: Mon, 17 Jun 2019 13:02:22 +0530
Message-Id: <20190617073252.27810-70-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004011_157353_03972FD3 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Assign desired cs_map values for lpddr4 during set memory map.

Initial cs_map values is based on the sdram parameters, so
the same will adjusted based dramtype as LPDDR4.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index ae227b958f..e03181fbc9 100644
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
