Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A67F47B54
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8juhjORrjxXEj4S/J69eJ4ozDpZ+RPxflLwoaiG/Um8=; b=mH/YCaZgDDge/f
	gpB3eUrS/NLu7gg0r+ouITJItLhSMlLo3BX7ZaHALrjqqTJ43AhxBjIAMzFAw3qyRRVG1NAmOuvs6
	s3zmBmI7XbSAxjKfyI5EZ8uIXIFbhhXrmPJDk2QCBX12i+eSwLHn/fjY6LsW48xcYwnvJmy0Tfwqb
	fAkdrNKykAX8Dax44bcHYI6eJrvU0wI4Nd/BtX9zhpdtMOQvn3xnMoxFB8tW0rqZWFrAMoPXAdy+Z
	1kpovNeKvheIzAo60dEO7UL47OvNzGrZuzN6xsy1GQS9Vz1m9jMM28yBNumHcsdui0oTCI42fSNhi
	XE7I/9y2aIVs/KBLETsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEk-0007sH-4I; Mon, 17 Jun 2019 07:39:30 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEe-0007ov-TV
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id k187so5317641pga.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nmwFUqUOCS8iVkKDxNTkju/mBzepfxNYBfFL/J8gC6k=;
 b=KhGA1vKeHTdlJgyKm1jISvBuzpDBBQf4il8PTSOpECfLUOktPP89k53WlcRndLgOSu
 VTkRrjweVW7NwqKhVog5BTuTx3uS8O8mJdeDd9YO1RwLItq/FRQ9nUMewReNvx9/qPW3
 o8sI+ko8uEM/6f1/cjBJV607FJZeiLkRveyII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nmwFUqUOCS8iVkKDxNTkju/mBzepfxNYBfFL/J8gC6k=;
 b=YnHP434a+xEBT2FWK9BYoxXMMemOtwySIRwFFpe39DlrZRL/8xMPP6c+qYJFfA8TSo
 DOW+EZD1qPe5S5PmnIzuolQX++TfmwDNqiZqtKMubIbU6pakHK6V7aFJwADc0Kya6Z4A
 mXD5hIizzrA8VgqwlK8aRhhAfP+IZOpC3cc+iOayu4Dt3/9wNYUUpmoHBjRV9z9f/Qtg
 XRWgP2HkpEXgfHc0v4joH9tOY+VL7KDcwp1bT6DoLNN6+Db2XOMXlQFhLzIna77FzeGK
 0TmURqlZUnJnB1C7BoXxqpD6duEVPCcbdRDOi8Y057vY/V3HreVSlHvtyRLMPhmuXzrE
 CfEg==
X-Gm-Message-State: APjAAAUDA24ZRYow/kiXFqQVYEkHlcXL5gKsNLA2e3J3ZysVR09+45C0
 xUwmxImEegmGI+AXCJIZLVUU/Q==
X-Google-Smtp-Source: APXvYqwI+2S3RTMUasg0pQESXZwtDnyiQFxdZjFW6IBiJqcI5I+NmmQYfoVxNzkmYCcqSnN03P9DnA==
X-Received: by 2002:a17:90a:d151:: with SMTP id
 t17mr24709490pjw.60.1560757164419; 
 Mon, 17 Jun 2019 00:39:24 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:24 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 55/99] clk: rockchip: rk3399: Set 50MHz ddr clock
Date: Mon, 17 Jun 2019 13:02:08 +0530
Message-Id: <20190617073252.27810-56-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003924_978401_E3D078D7 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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

Add support for setting 50MHz ddr clock.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 5d1ad94e85..1de21c9f3e 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -827,6 +827,10 @@ static ulong rk3399_ddr_set_clk(struct rk3399_cru *cru,
 
 	/*  clk_ddrc == DPLL = 24MHz / refdiv * fbdiv / postdiv1 / postdiv2 */
 	switch (set_rate) {
+	case 50 * MHz:
+		dpll_cfg = (struct pll_div)
+		{.refdiv = 1, .fbdiv = 12, .postdiv1 = 3, .postdiv2 = 2};
+		break;
 	case 200 * MHz:
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 1, .fbdiv = 50, .postdiv1 = 6, .postdiv2 = 1};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
