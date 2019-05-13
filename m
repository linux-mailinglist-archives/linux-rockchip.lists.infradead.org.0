Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86AC1BE8C
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 May 2019 22:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsFNjw7usSOMVTpVOTT4vW/B6ST3/QxogJKKVxf2fzk=; b=amk7asocRqE0ZU
	8b3jWvAI3A1/wsv1Zy/wBMzfFwxQkRwEKfgaG5DD3BACzQIEAFz1l9Tf5+PKXr1vwJzoO+vNVbzCZ
	lSHVu8LphdINvYR2KJr6YdnKTtBsOBfjAhhy1UORzNg+tAIVGjlASaaweyFpP0AVk4y3SCr1QiIqU
	u8F3bRnf2bCOl19GmNKIT4EWHbmok8pOTaHwIcorMf2WC3gWOrAiOj86eL6b6Lker2Xbm0FLlZapD
	PU+a7ca+xU04FV+2CNuQWQ2TtPU5lji58zo8iQw5in+oj4AXf1LLXujcu1Vu9nDlP6MxxGSDYjmBy
	iCZYdS4aTIeTBqAekc6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHRZ-00083q-E9; Mon, 13 May 2019 20:21:05 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHRR-00080h-CY
 for linux-rockchip@lists.infradead.org; Mon, 13 May 2019 20:21:01 +0000
Received: by mail-pl1-x643.google.com with SMTP id p15so7028666pll.4
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 13:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lnf9X1JzNr0p/o4q+Qg8KxiBFNUwbq0BM3Xh4UH0r7k=;
 b=bCGz4J8ppGdokDgODI+0By4RzdTs4uc+h8HuDat4mmDuu17yR0T+GnYtO3lDNPy82H
 wEif10+dwhAiTiS7e82OhpE1ddg4BGq+ixxRvPKhAClYImqsqNDhtVsrN1xXa2wUKad+
 osLIDfAY+jE4KhX0I++jdUsrXi50hLxQ1ZsAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lnf9X1JzNr0p/o4q+Qg8KxiBFNUwbq0BM3Xh4UH0r7k=;
 b=TAOs8m/rnr6xislO+2AG0BnhWGwFRNP9+wVUwUgu9FkKST4sT8eLAJPLH5KuVGpVgZ
 K8lvAUGnD2YcGZeBsSU/0M7boqQVT03ds3HDRsleqggOWYzFjiVHdVWPH+r59GwpngdW
 e3MZPx9nNQIE6Mt3PJ0yDEca0aRt+uzBBrx1uOpfgIOZ5RvZr+C1bci934CVM5JP6Yt/
 0uY+EDj2RKuX7Hw2+n2jV+/6hp145DV4sr1zwc+2U6lVb8XBNMxon8i/GDTh0CQVBVu1
 8KLcmz3RmJ56z68IV3mRrL9UGHNg4eUkoBnbL1m3CqYOUKtVB0gKQNg2paFaKrwOwPdb
 W+gw==
X-Gm-Message-State: APjAAAUlr44HmbfG1Qc02yAF8dKq8bXn/UtIUfDyAkQo29+wG6KBd2A3
 L19+G/jTquMvC5Is2SjfrTrLYA==
X-Google-Smtp-Source: APXvYqy5wGuT5CZ/TaXPeEZeoV8ZznOBT7/f/8i18U3AePnUU+33PWms/FxG3zRylr0ySkmVt8Ra/Q==
X-Received: by 2002:a17:902:6948:: with SMTP id
 k8mr33923439plt.81.1557778856650; 
 Mon, 13 May 2019 13:20:56 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id s198sm26356597pfs.34.2019.05.13.13.20.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 13:20:55 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2 3/3] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
Date: Mon, 13 May 2019 13:18:25 -0700
Message-Id: <20190513201825.166969-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190513201825.166969-1-dianders@chromium.org>
References: <20190513201825.166969-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132058_637675_D3D8F07B 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Force transfers to realtime priority").  Let's revert the uglier and
less reliable solution.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Guenter Roeck <groeck@chromium.org>
---

Changes in v2: None

 drivers/platform/chrome/cros_ec_spi.c | 80 ++-------------------------
 1 file changed, 6 insertions(+), 74 deletions(-)

diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
index a2959365a870..7adaf534eb8b 100644
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
