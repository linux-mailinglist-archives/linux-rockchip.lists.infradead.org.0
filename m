Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E0511F371
	for <lists+linux-rockchip@lfdr.de>; Sat, 14 Dec 2019 19:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OJnQ2WmZT1Tf3nYJsCAWbjAZ8//D7eKv3fexSvZcjEI=; b=qGAV3glQhQPd56LS2Dd0joSgBX
	7BkVf8k/noKpNxFJ7nv+yu64GmRhwdUOC5kvhPqVjpf64T7PrwQuDv8+qxCssnRNcmENcOZtYmxTU
	qr8YVYQiKmHDg8bwHR42XGOYk0AtYjo/wB4ANx3+mqfYrpl7ZmsSTXR6aN5bUfglV/x99bmcOck0E
	XGiSizwHE/nzuY48+ftmnjETaLnG1+dNuIi8Y+lk0nFN1GVfRCEeJA3MbsCFq5Y9wYkkClg9s0MlC
	By+NlgxseKtAwdYh8/o1pr+RVTxAy6XWJrUL6tyn9qFRB8IbngD3O6JN6MpLTr1s1Eot5KEKT6DcI
	dNY8J3NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBtf-00053B-0k; Sat, 14 Dec 2019 18:12:07 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBtA-0004T9-TH; Sat, 14 Dec 2019 18:11:38 +0000
Received: by mail-pl1-x641.google.com with SMTP id x17so2643309pln.1;
 Sat, 14 Dec 2019 10:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SvTdvPiQ4xS/R0i2wr0OUTzm/R634IQg+liWq51l5qI=;
 b=GjJhF1CAXzdxoO+FucPX1sTsI0/8x0LFMpCRzTIKTB81SGg0MRkFv1GuE/kKOUL7UM
 6xh1yviwLoQNhqQclDhr0qbETgbrQEG3Ud5h6lssD5CihvWHgbVvX6aL1znY47R16vE/
 ni44huX7x6QKD+AxFPeFCEPoWTnbtgzVWNKv8UqHGkmTqwiSPs5E+KsZp2EXozsYAOhX
 3hYprEBKDcQcZKcQD4ARCH0TFznsrlG/fZGamrUOwgWtiiVSUq8eqaX6lUkslUZDWMwO
 X6+igpp4YIpotZWdWePFhV80TtqzIO+7MiGcJ+TpQj+fIBok9XfGdQvGdXu+alQtEHut
 4SGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SvTdvPiQ4xS/R0i2wr0OUTzm/R634IQg+liWq51l5qI=;
 b=Ok2Vmmkf7urqLIStQBRMsIJ7xQIAAsvDQKiHnRp3UJnVBVh2IDC+y29+c8HAMvBUkW
 bG5a6Skgx1rw9bbYHDivADiTsV2CaXn0cGzcxmdx5zJ2wz1krwX8Em+HlNSv2Eu1v23r
 nnIV8jQZvymjtybxa7eU3mgh3Q+tSIBGyclBG9OkgFW+YRM8NFQZDp+Yo0kAdYOBFKpv
 dKX+/PlcT15Sqnzc+YAxJWqHk4F4rzOOkYvOjQWC2ov1PS8jd9tFgKKLK3ukj0uk0kHP
 BEfTI1cFzNA3DjzuCTjl+00R1y1IE1yR1L/sJ2M35sf9WJDF/KwS1oO7ianHD9CdwZzF
 EuGQ==
X-Gm-Message-State: APjAAAVIttndz34aSmogDUOwt+A5iiFp+rY+9NF/B3J9KCPsAfJCwDk0
 6SrnjL8oWRKg8nrdkk7bD8Y=
X-Google-Smtp-Source: APXvYqwO9rgNZe3r1YYJXfOMjUaz6xLzQB0K3HMgzzIWBQTtDHfKH5LltW8bhA04msSercIVr4AEHw==
X-Received: by 2002:a17:902:8541:: with SMTP id
 d1mr6447836plo.57.1576347096300; 
 Sat, 14 Dec 2019 10:11:36 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id f8sm13276261pfn.2.2019.12.14.10.11.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Dec 2019 10:11:35 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 heiko@sntech.de
Subject: [PATCH 2/2] PM / devfreq: rk3399_dmc: add missing of_node_put()
Date: Sat, 14 Dec 2019 18:11:30 +0000
Message-Id: <20191214181130.25808-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191214181130.25808-1-tiny.windzz@gmail.com>
References: <20191214181130.25808-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_101136_952576_E817D1EF 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

of_node_put() needs to be called when the device node which is got
from of_parse_phandle has finished using.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/devfreq/rk3399_dmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 2e65d7279d79..2f1027c5b647 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -372,6 +372,7 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	node = of_parse_phandle(np, "rockchip,pmu", 0);
 	if (node) {
 		data->regmap_pmu = syscon_node_to_regmap(node);
+		of_node_put(node);
 		if (IS_ERR(data->regmap_pmu))
 			return PTR_ERR(data->regmap_pmu);
 	}
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
