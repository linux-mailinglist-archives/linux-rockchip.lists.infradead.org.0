Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FA947B4F
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FnVMURFVquOoKwhxecia90ea9rb3/mUArecee+Uiio=; b=JQ/HBlVqWVnTmj
	PFrwRjK2q9nzN0oqPRoy446JN0sdlauSVqNPE4VxljNwI4fjrF215nt29W2nn9u936GbBDFcDP8ha
	cikFVzdXthAio+IqcMiNg91ZOYAPexClM12Uk8GdFGyngl6SAXHojt+41xCgoSs96u6xPzfJKz2LQ
	x4i4F9i29EoYcGnZlrcFLYdShPQxIiyqOO9mAPbd+d68GIv1Bw3MXUSHDSPaG84Ddr5rChNKNlCsh
	bGfMTSF9Y01g8Aj29xO9Laq9FDK/AhSIZV2TzVismtBrRg+bOiKAG9IvH9YTQqc/m0Go1CHy2R7MN
	/7oeuPqFY61vzJpOi3QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEU-0007dt-75; Mon, 17 Jun 2019 07:39:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEO-0007a3-JX
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:09 +0000
Received: by mail-pg1-x542.google.com with SMTP id v9so5287715pgr.13
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pa89ljwqYQJg7yIuO3/z5Z9hjRvwxKVbcNr1PKxfaZU=;
 b=b2Pe0rkRwXsBPh731YVbkiA+2ZRJpP6QHHVBPQ/wXqtFV1Tkwoo/mJ2wOw56/OCSWM
 Kn9Ky5g+kcpPHN+ozBjxWPahBqKfhkgaWmP5N3HavRRdKsAtw4fyjbASKNeOxYax3chv
 MUXSOqaiKem3MVnjzHJghPyVh+4GAwfFgiHuI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pa89ljwqYQJg7yIuO3/z5Z9hjRvwxKVbcNr1PKxfaZU=;
 b=nfA4fHPOZvm2wnLV9Oh2ZhDNhI6U5esaHZr+aq3bPVqfBKs9wZwP6JvmJe7HjK5723
 Wpuw/ZNosPRq5VDlw7w2vOU8egwUVqdO5GLJ4OJRB0XmQE6lf9pZXg5etodMBcN6dUZ8
 uhhiQqDzWB5NuJhfDJcTkmS8tvaPdiWhlb8Uep5EDuLrtK+cZ/zMo5jf3xIUWugTjR+1
 xfA/hLomd4/Eh0y5yPptbvu+Kcj60TLeWMk32ClibpYB5beBveiBEGKc7f2QbEjyp0e2
 g0dtg8XRTqcyGTjcZOGqd+LTSMpdHSMUtEHmSbVOOwIjNdjGTPq/v2Z7yjw//zK0+iP+
 /a4g==
X-Gm-Message-State: APjAAAVG/tbUJcp5s9Y7/3wHGIq6tbq+G4Mg2Xk1TjU5d3VWAsQqedrM
 v/5vT4B5xigPQpb9BpEIYKlmeg==
X-Google-Smtp-Source: APXvYqwYFzPqc+oFc+gTU6W+kLzZGoVNYWPt58NWiiZgxtRcOU3bs+QtsJPkRzGvMaPb4dXcL/qK7g==
X-Received: by 2002:a63:5457:: with SMTP id e23mr49457269pgm.307.1560757148044; 
 Mon, 17 Jun 2019 00:39:08 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 50/99] ram: rk3399: Compute stride for 1 channel a
Date: Mon, 17 Jun 2019 13:02:03 +0530
Message-Id: <20190617073252.27810-51-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003908_710837_E06A53F3 
X-CRM114-Status: GOOD (  10.60  )
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

Add stride computation for the sdram which support
single channel a

This configuration available in NanoPi NEO4 and the
same can work with existing rk3399-sdram-ddr3-1866.dtsi

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 75df469952..87eda06055 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1208,6 +1208,10 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *params)
 		chinfo |= 1 << channel;
 	}
 
+	/* stride calculation for 1 channel */
+	if (params->base.num_channels == 1 && chinfo & 1)
+		return 0x17;	/* channel a */
+
 	/* stride calculation for 2 channels, default gstride type is 256B */
 	if (ch_cap[0] == ch_cap[1]) {
 		cap = ch_cap[0] + ch_cap[1];
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
