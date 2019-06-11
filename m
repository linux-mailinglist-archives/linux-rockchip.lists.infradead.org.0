Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7613CFA3
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJavpoCR5e08++zN/pne00JhDFQVEHQP5X4uYrVIcOA=; b=N7nuJpe0zAWhY5
	15II/+qivDoh8pk+4GOKCezZStUq5nFxUPpx4LbwDH94oSYfy9IdPzXl/pc1OeLLVpiX/UZ4p/KSl
	qBezrXucHpiMBkHbaZGOkgPse5mdOdmdVe6GcwHlq9CHPBYxo7mqjRLGwfq/C/zzTmZEDkxK1GDAu
	S79TDlIZhsnIc9twnlGAG0OKbEwwvW3dcJ1+tmPmjRu/h7waVGIcJf1S1NNf1SRl9SoAGD+PMWGqP
	D7fe/CLiOL0zgj3AJa8V14w59ceDQ/J0ohca9cLw1FTuXlbhBl2gIb1OV5AMf1PwKiPNwLlWg+RVo
	6nQi4tIWHPZDnS2Vqlhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAj-0005g4-U5; Tue, 11 Jun 2019 14:54:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAd-0005dD-Sp
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so7580856pfe.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7B3tbjY3n0ai6z9ObJzMBT9vy+XRoJe3mWhFKoigG/c=;
 b=KrImql71xcFNb0WrCWlI/09YP9UfP6n2nqcuwop+HGO/7Kjf8gN174M1Hg6A2dS6/n
 TWSTO3bjEmmqk4sU+n5/k93fJU1LnnvNn0mK+isML89vPiduUYiaL7VA0ZyJGSQYWTp0
 6/zgxAWRPWPY2WT1ok2R3EjzOXnT9HcVLhKSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7B3tbjY3n0ai6z9ObJzMBT9vy+XRoJe3mWhFKoigG/c=;
 b=sgf5/qdKPaTD22CD0ETdNd2xjVd+ZD1oXorAHsmlIgYGCJcp5erUYboHeDSnnmYfd9
 1s1Q/OBWbKQnX1im7cjY0b3+lX7GWc3btioy4z9acv0y0qEDyrq0BP/7iswpyYOxqOk/
 HncUEt8upEpn5Cr7TAjuYyQRqYEsx+Ok9UFxPAfJKpcHV//+FnEGULEd2oc9+HxRl8Cp
 4F9wpeGrJEienRhmTB3lxZ9EgnQYOs/lP3jmnmAGA9OjECknLqsRQIh4CWfamsvvu42A
 6bmPdkp2uuibulnX9wrbwSS3WPcm0oU5vNPgfiScR/o9lUqhH+XfnbaOJZU4M8/FvthQ
 kMMw==
X-Gm-Message-State: APjAAAV6HZn8GB5XpBzJ8N1OLFZr+BlQiFGNd88txvRTIgxEncad/LPG
 7ortRSLJv85QOtuu3z5tbIPafA==
X-Google-Smtp-Source: APXvYqwW6OnI5GUa388tzpomITQPH3HaGtsstNL697ul74RNs+IlCQYMNNtiplg8wWQ0UkKkRsYofQ==
X-Received: by 2002:aa7:8083:: with SMTP id v3mr1852563pff.69.1560264883270;
 Tue, 11 Jun 2019 07:54:43 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:42 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 43/92] debug_uart: Add printdec
Date: Tue, 11 Jun 2019 20:20:46 +0530
Message-Id: <20190611145135.21399-44-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075443_956958_1E691454 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Add printdec, this would help to print an
output a decimalism value.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 include/debug_uart.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/debug_uart.h b/include/debug_uart.h
index 34e8b2fc81..cd70ae1a04 100644
--- a/include/debug_uart.h
+++ b/include/debug_uart.h
@@ -104,6 +104,13 @@ void printhex4(uint value);
  */
 void printhex8(uint value);
 
+/**
+ * printdec() - Output a decimalism value
+ *
+ * @value:	Value to output
+ */
+void printdec(uint value);
+
 #ifdef CONFIG_DEBUG_UART_ANNOUNCE
 #define _DEBUG_UART_ANNOUNCE	printascii("<debug_uart> ");
 #else
@@ -170,6 +177,18 @@ void printhex8(uint value);
 	{ \
 		printhex(value, 8); \
 	} \
+\
+	void printdec(uint value) \
+	{ \
+		if (value > 10) { \
+			printdec(value / 10); \
+			value %= 10; \
+		} else if (value == 10) { \
+			_debug_uart_putc('1'); \
+			value = 0; \
+		} \
+		_debug_uart_putc('0' + value); \
+	} \
 \
 	void debug_uart_init(void) \
 	{ \
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
