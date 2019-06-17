Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E9447B49
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJavpoCR5e08++zN/pne00JhDFQVEHQP5X4uYrVIcOA=; b=iJLDBl2OleakcI
	PnYCIps3y48oTJWoChXqLQjCG5VKY8qTz/igcOIhGvCJ+gTcbJciMpQ0lhBhYBuEBBwtdCefwXMy4
	fCsZkbu4XTFo0tGjHam1Uc1+a2OHTIRQcnoMnXxnWzBBDIp0YIG++FV4nQQqw30F2IjvOHfpsBwG6
	jTXCY9csvxA+hP0zZi67CXvkmYORVrOrhTtsPSFQQ/oAh7YIR2IShbfRtvFtudCoxIkgMiaXTlAuo
	m1SeB3EO7UBrvSJpsyOBxA9wVJ9rlOgUE+p6jE0BD6NOhBhthuNftBkQ1ICk+0ae+yEVI0cW9qc8B
	pMvQViF/b4xZSJr+vINA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEE-0007Oy-TV; Mon, 17 Jun 2019 07:38:58 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmE4-00076b-CN
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:49 +0000
Received: by mail-pg1-x542.google.com with SMTP id n65so852837pga.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7B3tbjY3n0ai6z9ObJzMBT9vy+XRoJe3mWhFKoigG/c=;
 b=fJLZyOKvt31EemGJQlxQ39ABq1iw9CpANYz4JC2C7jMydgbsZ2KQZDhO5Nnq+OIHSJ
 qG3mS1PdMOca5pUdiInHajhK1778ehlfYOn0mnfpAmh+ZpQ062IMuBcLA2574gzx6Qv8
 aq3u3bGOTvRH4nBI8ypcNE9qtZGCafN+E2rfY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7B3tbjY3n0ai6z9ObJzMBT9vy+XRoJe3mWhFKoigG/c=;
 b=X0rsMsTNmdx7+9RAeWtxd2gSiCaIFCiQ+Y8tsQ03KCGu4IBcwvY0skGhZNuH+9Ggqp
 QEy9DwUI/b6uNOOxxTq+8h3uIPQ050/Mg4DNdQnPa5dkUwUBjWhkiWXMs+VvKTHmqqUt
 wTQ7YE0okfkwB3yQuHd5jQBf0FoJ5AbYXltRhZWPrTaM6AvUmz4lShvbes7sSRvIhZtG
 McSB8DTPLW4lb2fXK24jm09Q9ufdtwzrq80sdr7bNcaJ9gPvE18VJPnMkQ7gBpn5C9i9
 uRCEpkHwI1Oo9Nk133+/ulfuHlWAbxaCyPTxoN1arvjAVcPEbQXRZcGSq14h0FyV+xXU
 oqfA==
X-Gm-Message-State: APjAAAUZQUN1xfLDOBmnwqCdbTqagGXgOfMX+NnlBzWlv6wguvAkxFKH
 5nPkW+ZwF0qvhY+m6GidcN/29g==
X-Google-Smtp-Source: APXvYqw5RwlnR7H/anjP2Vfb9FNyFFv8eP7sf7LBKuFgP3f7q9TMUAHJBV+vl97UQY9xCn+7MbQIYw==
X-Received: by 2002:a63:5961:: with SMTP id j33mr30677877pgm.89.1560757127788; 
 Mon, 17 Jun 2019 00:38:47 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 44/99] debug_uart: Add printdec
Date: Mon, 17 Jun 2019 13:01:57 +0530
Message-Id: <20190617073252.27810-45-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003848_762641_B7C6B518 
X-CRM114-Status: UNSURE (   9.68  )
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
