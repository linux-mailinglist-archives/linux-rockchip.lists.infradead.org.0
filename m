Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6682124C8
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 00:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbhUmlJogXqzRi3G04m06LQDuY5OpAcPSrLA2cJFzKA=; b=VMxQhgTsuRO4bV
	Ad4X4qQaaS7NS//Za7KpTigAErhD4UQ0UPWFZ8QPSQfsDTpmXPrKxLgEmd0+yYreYCOPw7OrteWsw
	+Dz1QsoJDwq+VxLMi9Ri2kx0etX3FFiGN4Bh0vWiHGA65X0v4mYpusm9k3zIcMBZ8pNexLQbiY4ti
	VpTir7wi/J7LBNNgiTBaNcbWC9Q08o6VXSOwEGvLAlWHpWEUMOSXCSVv7OGNs940x4tx/4W9yvVPP
	0ioBvpydFC7VLChF8QppzdZll5EtADsi1vmkpqWv5kYBYvhEY9SQr0NrLWUed8QS3MOUPdov5gr/A
	jB1Jn56No0i7zHMYub4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKb7-0005F8-0r; Thu, 02 May 2019 22:54:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKav-000531-So
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 22:54:27 +0000
Received: by mail-pf1-x441.google.com with SMTP id 13so1542218pfw.9
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 15:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l64/bY1LxWfLDdKRyx3HvfnrnrE3pPmc5ecC8BHS8F8=;
 b=RwI3FCTdhPlmT+vMtbOwvhHezJhcz6S3wikgsAnwkzLmQ+9lRGGWZfnNLQ7JOD3f3V
 O618Ee2olbH1vL5uLwrwyxrNnp/TRnW88UEo6BeI7bB6wvtvXpGkZYd/9QPsiyrQWmTc
 S0/rHacmhEwblVNjhViOt5F8O/gOx/K3I45VM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l64/bY1LxWfLDdKRyx3HvfnrnrE3pPmc5ecC8BHS8F8=;
 b=HPYBNCTsbAF90QVYgsSxgGqU/XC5z1xIRyO/1pIY/lFlPOhnkGCYaZNnR+pn0A07QT
 +/UA5Aa1Fu2yyZKTpVUSOaXHZ/jLDWfCTHA2UPlKFYK+xu5361OXg/wB2nRjcZ5ISgVY
 h/6TwWIGU7fEWYin6C+pCe6Gq6XmwB4FILyR6RIakMFqX9MFFo3e+Ib+jfUUwF/VwZsJ
 qL24sHMmDSga/Fr+AwYXTYhw008OhXT9ok8bZgdVtJ7Er2Qp33FewgshJ3eF49mluIVv
 wTQxb08MEUM3cY5q6D2g9ZnpB9rScY4OHI8PXFGzVnD+zHA7/vtItYJC1g3gk1qHBEhm
 g8Yw==
X-Gm-Message-State: APjAAAXnFjtrTtpIBRXISrK+0+pvaE37mJ7D891T4oZqU36ZsIw/3oUT
 2yTzpQWDpXIIoXCG0c+4+J+LKw==
X-Google-Smtp-Source: APXvYqw76PWYSXX61eOhftbcTudFyvpDPm4S/i4gNcHsWTvjZHUKRbeYb0d9ibyOWF51AFQB+grXKg==
X-Received: by 2002:a63:f707:: with SMTP id x7mr6521431pgh.343.1556837665388; 
 Thu, 02 May 2019 15:54:25 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v15sm264736pff.105.2019.05.02.15.54.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 15:54:24 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/5] drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus
Date: Thu,  2 May 2019 15:53:33 -0700
Message-Id: <20190502225336.206885-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190502225336.206885-1-dianders@chromium.org>
References: <20190502225336.206885-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_155425_936680_10DB63F9 
X-CRM114-Status: GOOD (  25.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

See the PhD thesis in the comments in this patch for details, but to
summarize this adds a hacky "unwedge" feature to the dw_hdmi i2c bus to
workaround what appears to be a hardware errata.  This relies on a
pinctrl entry to help change around muxing to perform the unwedge.

NOTE that the specific TV this was tested on was the "Samsung
UN40HU6950FXZA" and the specific port was the "STB" port.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 116 +++++++++++++++++++---
 1 file changed, 100 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index db761329a1e3..c66587e33813 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -19,6 +19,7 @@
 #include <linux/hdmi.h>
 #include <linux/mutex.h>
 #include <linux/of_device.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/regmap.h>
 #include <linux/spinlock.h>
 
@@ -169,6 +170,10 @@ struct dw_hdmi {
 	bool sink_is_hdmi;
 	bool sink_has_audio;
 
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *default_state;
+	struct pinctrl_state *unwedge_state;
+
 	struct mutex mutex;		/* for state below and previous_mode */
 	enum drm_connector_force force;	/* mutex-protected force state */
 	bool disabled;			/* DRM has disabled our bridge */
@@ -247,11 +252,82 @@ static void dw_hdmi_i2c_init(struct dw_hdmi *hdmi)
 		    HDMI_IH_MUTE_I2CM_STAT0);
 }
 
+static bool dw_hdmi_i2c_unwedge(struct dw_hdmi *hdmi)
+{
+	/* If no unwedge state then give up */
+	if (IS_ERR(hdmi->unwedge_state))
+		return false;
+
+	dev_info(hdmi->dev, "Attempting to unwedge stuck i2c bus\n");
+
+	/*
+	 * This is a huge hack to workaround a problem where the dw_hdmi i2c
+	 * bus could sometimes get wedged.  Once wedged there doesn't appear
+	 * to be any way to unwedge it (including the HDMI_I2CM_SOFTRSTZ)
+	 * other than pulsing the SDA line.
+	 *
+	 * We appear to be able to pulse the SDA line (in the eyes of dw_hdmi)
+	 * by:
+	 * 1. Remux the pin as a GPIO output, driven low.
+	 * 2. Wait a little while.  1 ms seems to work, but we'll do 10.
+	 * 3. Immediately jump to remux the pin as dw_hdmi i2c again.
+	 *
+	 * At the moment of remuxing, the line will still be low due to its
+	 * recent stint as an output, but then it will be pulled high by the
+	 * (presumed) external pullup.  dw_hdmi seems to see this as a rising
+	 * edge and that seems to get it out of its jam.
+	 *
+	 * This wedging was only ever seen on one TV, and only on one of
+	 * its HDMI ports.  It happened when the TV was powered on while the
+	 * device was plugged in.  A scope trace shows the TV bringing both SDA
+	 * and SCL low, then bringing them both back up at roughly the same
+	 * time.  Presumably this confuses dw_hdmi because it saw activity but
+	 * no real STOP (maybe it thinks there's another master on the bus?).
+	 * Giving it a clean rising edge of SDA while SCL is already high
+	 * presumably makes dw_hdmi see a STOP which seems to bring dw_hdmi out
+	 * of its stupor.
+	 *
+	 * Note that after coming back alive, transfers seem to immediately
+	 * resume, so if we unwedge due to a timeout we should wait a little
+	 * longer for our transfer to finish, since it might have just started
+	 * now.
+	 */
+	pinctrl_select_state(hdmi->pinctrl, hdmi->unwedge_state);
+	msleep(10);
+	pinctrl_select_state(hdmi->pinctrl, hdmi->default_state);
+
+	return true;
+}
+
+static int dw_hdmi_i2c_wait(struct dw_hdmi *hdmi)
+{
+	struct dw_hdmi_i2c *i2c = hdmi->i2c;
+	int stat;
+
+	stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
+	if (!stat) {
+		/* If we can't unwedge, return timeout */
+		if (!dw_hdmi_i2c_unwedge(hdmi))
+			return -EAGAIN;
+
+		/* We tried to unwedge; give it another chance */
+		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
+		if (!stat)
+			return -EAGAIN;
+	}
+
+	/* Check for error condition on the bus */
+	if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
+		return -EIO;
+
+	return 0;
+}
+
 static int dw_hdmi_i2c_read(struct dw_hdmi *hdmi,
 			    unsigned char *buf, unsigned int length)
 {
 	struct dw_hdmi_i2c *i2c = hdmi->i2c;
-	int stat;
+	int ret;
 
 	if (!i2c->is_regaddr) {
 		dev_dbg(hdmi->dev, "set read register address to 0\n");
@@ -270,13 +346,9 @@ static int dw_hdmi_i2c_read(struct dw_hdmi *hdmi,
 			hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_READ,
 				    HDMI_I2CM_OPERATION);
 
-		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
-		if (!stat)
-			return -EAGAIN;
-
-		/* Check for error condition on the bus */
-		if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
-			return -EIO;
+		ret = dw_hdmi_i2c_wait(hdmi);
+		if (ret)
+			return ret;
 
 		*buf++ = hdmi_readb(hdmi, HDMI_I2CM_DATAI);
 	}
@@ -289,7 +361,7 @@ static int dw_hdmi_i2c_write(struct dw_hdmi *hdmi,
 			     unsigned char *buf, unsigned int length)
 {
 	struct dw_hdmi_i2c *i2c = hdmi->i2c;
-	int stat;
+	int ret;
 
 	if (!i2c->is_regaddr) {
 		/* Use the first write byte as register address */
@@ -307,13 +379,9 @@ static int dw_hdmi_i2c_write(struct dw_hdmi *hdmi,
 		hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_WRITE,
 			    HDMI_I2CM_OPERATION);
 
-		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
-		if (!stat)
-			return -EAGAIN;
-
-		/* Check for error condition on the bus */
-		if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
-			return -EIO;
+		ret = dw_hdmi_i2c_wait(hdmi);
+		if (ret)
+			return ret;
 	}
 
 	return 0;
@@ -2606,6 +2674,22 @@ __dw_hdmi_probe(struct platform_device *pdev,
 
 	/* If DDC bus is not specified, try to register HDMI I2C bus */
 	if (!hdmi->ddc) {
+		/* Look for (optional) stuff related to unwedging */
+		hdmi->pinctrl = devm_pinctrl_get(dev);
+		if (!IS_ERR(hdmi->pinctrl)) {
+			hdmi->unwedge_state =
+				pinctrl_lookup_state(hdmi->pinctrl, "unwedge");
+			hdmi->default_state =
+				pinctrl_lookup_state(hdmi->pinctrl, "default");
+
+			if (IS_ERR(hdmi->default_state) &&
+			    !IS_ERR(hdmi->unwedge_state)) {
+				dev_warn(dev,
+					 "Unwedge requires default pinctrl\n");
+				hdmi->unwedge_state = ERR_PTR(-ENODEV);
+			}
+		}
+
 		hdmi->ddc = dw_hdmi_i2c_adapter(hdmi);
 		if (IS_ERR(hdmi->ddc))
 			hdmi->ddc = NULL;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
