Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD581A550
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 May 2019 00:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lF7sAiKR5apaO5h3YkNdns0brkABV8ANljJ7vf/Qoic=; b=dbsLbBlhlS0Ve0
	mMeu3qwtdr7Y3+xEy9oBNJlSFej0ShO2ETqO3nggUvgru08XWpuKYQwjhj1oXKX6IymmIsxjsua+n
	AIXFXCYG+vmuy0w0VjPl/KuXYonDYUWZLfH1LLJyxtumauhs1YpEPK19TjwTlf7WA3htOrC7A6duD
	4Y/tpryVBe81Mr/q/hgamIGJTHiN7012gG4WRll3XcjHpMVNKuX4OR7tAlBvAqvZ193QzVpUzbGVs
	AQLPzV7qhVCUwKQHewY+oswgiJ01k6t3lQWc8nuIDZu1iwWp5lvYk780VDS7KcKi9pNTMTDJrv/vt
	AviO9CecWLyTEROmm3CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPE6r-0005LR-Hb; Fri, 10 May 2019 22:35:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPE6m-0005GT-2F
 for linux-rockchip@lists.infradead.org; Fri, 10 May 2019 22:35:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id 145so3649388pgg.9
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 15:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QaD6p9yeCboFRN1O4f3agFfdrFqU2J5sjBMDQWDo2g0=;
 b=oPak1zDG4jOI/uCaxLX8GHqaGMSoiTU8gNv/Dn7HQtIJUcJqpsrpss2JiplUy66611
 ublJS8OvyIhozjVuBWqpFT1OKbcYlS1+capXhghyJ5pjoxiKxdTRkFC+9mJIuVevuS+d
 Gp9v4NqLOyhGTqEqJgHr3umOhrqhTmwnwf91w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QaD6p9yeCboFRN1O4f3agFfdrFqU2J5sjBMDQWDo2g0=;
 b=B98do9/bJVGyE7v5AnJCcwCmSExEzc3pSBu2OsMgumUb8zuiawKRuhDTl6ssumW87R
 Fo7sys+nUkkbGD2Rl8hhRWGEYDAeFO6TXaw/ogl9H80j5zqnqhHuiVSBmPiYK3xF2Pfk
 YtIAhg4eBZJTuLfu8K++dBzoL/g/+wQQgzXEvwYOSmn3st8P/Gu882BlrjRC4UElgMIO
 WUUox9az3UTWzjzvXP2/dItL7//EAj2GJEAdAx7DINZ3O40OqzEZfyn48tqBXHUFa4y6
 DTiHEcpgSjWTRck+KwN/FeJL5tDmC4Fb5zrPkjxW/ZPe9++KFdoYW9aeDgrTzOVyyPgo
 zyLg==
X-Gm-Message-State: APjAAAUiH++o8OPTruldOXcdVf71ipvJwULLvOnaYQRgyfX+DZ7r6ijO
 Igamx7ZhsjathGAyfd4ighU+YrhJWVk=
X-Google-Smtp-Source: APXvYqzfM5/LmGIWWgBYDTcbycKUOiDEKbIXg5w7z1nWzDfcvuqgnSrkZZgBnWXxW3V3WNmk2pnBdg==
X-Received: by 2002:aa7:8b8b:: with SMTP id r11mr17507706pfd.130.1557527715309; 
 Fri, 10 May 2019 15:35:15 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j6sm7689393pfe.107.2019.05.10.15.35.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 15:35:14 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer messages
 at high priority"
Date: Fri, 10 May 2019 15:34:37 -0700
Message-Id: <20190510223437.84368-5-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190510223437.84368-1-dianders@chromium.org>
References: <20190510223437.84368-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_153516_106095_B97A316E 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: drinkcat@chromium.org, briannorris@chromium.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Guenter Roeck <groeck@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This reverts commit 37a186225a0c020516bafad2727fdcdfc039a1e4.

We have a better solution in the patch ("platform/chrome: cros_ec_spi:
Set ourselves as timing sensitive").  Let's revert the uglier and less
reliable solution.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/platform/chrome/cros_ec_spi.c | 80 ++-------------------------
 1 file changed, 6 insertions(+), 74 deletions(-)

diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
index 757a115502ec..70ff1ad09012 100644
--- a/drivers/platform/chrome/cros_ec_spi.c
+++ b/drivers/platform/chrome/cros_ec_spi.c
@@ -75,27 +75,6 @@ struct cros_ec_spi {
 	unsigned int end_of_msg_delay;
 };
 
-typedef int (*cros_ec_xfer_fn_t) (struct cros_ec_device *ec_dev,
-				  struct cros_ec_command *ec_msg);
-
-/**
- * struct cros_ec_xfer_work_params - params for our high priority workers
- *
- * @work: The work_struct needed to queue work
- * @fn: The function to use to transfer
- * @ec_dev: ChromeOS EC device
- * @ec_msg: Message to transfer
- * @ret: The return value of the function
- */
-
-struct cros_ec_xfer_work_params {
-	struct work_struct work;
-	cros_ec_xfer_fn_t fn;
-	struct cros_ec_device *ec_dev;
-	struct cros_ec_command *ec_msg;
-	int ret;
-};
-
 static void debug_packet(struct device *dev, const char *name, u8 *ptr,
 			 int len)
 {
@@ -371,13 +350,13 @@ static int cros_ec_spi_receive_response(struct cros_ec_device *ec_dev,
 }
 
 /**
- * do_cros_ec_pkt_xfer_spi - Transfer a packet over SPI and receive the reply
+ * cros_ec_pkt_xfer_spi - Transfer a packet over SPI and receive the reply
  *
  * @ec_dev: ChromeOS EC device
  * @ec_msg: Message to transfer
  */
-static int do_cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
-				   struct cros_ec_command *ec_msg)
+static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
+				struct cros_ec_command *ec_msg)
 {
 	struct ec_host_response *response;
 	struct cros_ec_spi *ec_spi = ec_dev->priv;
@@ -514,13 +493,13 @@ static int do_cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
 }
 
 /**
- * do_cros_ec_cmd_xfer_spi - Transfer a message over SPI and receive the reply
+ * cros_ec_cmd_xfer_spi - Transfer a message over SPI and receive the reply
  *
  * @ec_dev: ChromeOS EC device
  * @ec_msg: Message to transfer
  */
-static int do_cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
-				   struct cros_ec_command *ec_msg)
+static int cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
+				struct cros_ec_command *ec_msg)
 {
 	struct cros_ec_spi *ec_spi = ec_dev->priv;
 	struct spi_transfer trans;
@@ -632,53 +611,6 @@ static int do_cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
 	return ret;
 }
 
-static void cros_ec_xfer_high_pri_work(struct work_struct *work)
-{
-	struct cros_ec_xfer_work_params *params;
-
-	params = container_of(work, struct cros_ec_xfer_work_params, work);
-	params->ret = params->fn(params->ec_dev, params->ec_msg);
-}
-
-static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,
-				 struct cros_ec_command *ec_msg,
-				 cros_ec_xfer_fn_t fn)
-{
-	struct cros_ec_xfer_work_params params;
-
-	INIT_WORK_ONSTACK(&params.work, cros_ec_xfer_high_pri_work);
-	params.ec_dev = ec_dev;
-	params.ec_msg = ec_msg;
-	params.fn = fn;
-
-	/*
-	 * This looks a bit ridiculous.  Why do the work on a
-	 * different thread if we're just going to block waiting for
-	 * the thread to finish?  The key here is that the thread is
-	 * running at high priority but the calling context might not
-	 * be.  We need to be at high priority to avoid getting
-	 * context switched out for too long and the EC giving up on
-	 * the transfer.
-	 */
-	queue_work(system_highpri_wq, &params.work);
-	flush_work(&params.work);
-	destroy_work_on_stack(&params.work);
-
-	return params.ret;
-}
-
-static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
-				struct cros_ec_command *ec_msg)
-{
-	return cros_ec_xfer_high_pri(ec_dev, ec_msg, do_cros_ec_pkt_xfer_spi);
-}
-
-static int cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
-				struct cros_ec_command *ec_msg)
-{
-	return cros_ec_xfer_high_pri(ec_dev, ec_msg, do_cros_ec_cmd_xfer_spi);
-}
-
 static void cros_ec_spi_dt_probe(struct cros_ec_spi *ec_spi, struct device *dev)
 {
 	struct device_node *np = dev->of_node;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
