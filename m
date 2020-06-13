Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8321F85D8
	for <lists+linux-rockchip@lfdr.de>; Sun, 14 Jun 2020 01:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IqCLKfVF8jz6iCz7gVyrAbOkut7ZaZ9TdIa9Gpx3KnU=; b=Px9
	kdX3SRb0PlRzYONaHMTOyJmAbYp/aPZWsK4+vgI3tSMfurXzFwEwXfU8OLV0AJVbi40KjSm2xP3Zt
	/EQguU+6DkfDUzbU40tmUxtmod0/Hbh7KBKz0xp5DoYet9S5DHehGMHNnLb2WhhpsS2SXPJ5WXEhP
	r4OMDedn/t7o2SbkNLkLvaWWJ73t69YKQZ5VPe8J/OMfvx69JmQBWVyxEPyHA1LVdQ6d2cQYtAqxZ
	zFxl2W8FbVjyFgscAHvBcLxhkGz6MNtq/p0jDDlApeson4desvQTCIlvDrqKQAQNXnkJsybHCU0Pd
	kbu5yBCFdjQxyUNDOaBtc/j+SUuqPJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkFLp-0003Ly-S9; Sat, 13 Jun 2020 23:14:13 +0000
Received: from mta-p6.oit.umn.edu ([134.84.196.206])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkFLb-00039s-Na
 for linux-rockchip@lists.infradead.org; Sat, 13 Jun 2020 23:14:01 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p6.oit.umn.edu (Postfix) with ESMTP id 49kth511S8z9vYTt
 for <linux-rockchip@lists.infradead.org>; Sat, 13 Jun 2020 23:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p6.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p6.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UINkAhStEZGn for <linux-rockchip@lists.infradead.org>;
 Sat, 13 Jun 2020 18:13:57 -0500 (CDT)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p6.oit.umn.edu (Postfix) with ESMTPS id 49kth46S2wz9vYTv
 for <linux-rockchip@lists.infradead.org>; Sat, 13 Jun 2020 18:13:56 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p6.oit.umn.edu 49kth46S2wz9vYTv
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p6.oit.umn.edu 49kth46S2wz9vYTv
Received: by mail-il1-f199.google.com with SMTP id n2so9292448ilq.4
 for <linux-rockchip@lists.infradead.org>; Sat, 13 Jun 2020 16:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Lp/57Kv3gzuXj/K9oQ77nASFzku70Zj4jK0Z7RozDsE=;
 b=lfurDX56hYBZrhdFYqEBnv2irvi2WRAzXzjIzOMzTNHuv42xHT5JVvBul2r6yRZfSr
 Cedk/u4yLdw8aRqEc/y4ItmczY/Wy46YSJdJrRMiyu6axMe091p2oVRathwkVLAjctph
 O1ryAN6KCqcJBCUYQiS5rpomqGicoXiT0GBMpThSYx8h/WfcepNjKEwEdueyxHsiT/QC
 QuMW8qQhASGbepJxBMeb2/E+/u9MHhAnP4kSZh7r1eGnqZTnwEm5ywzhNHk5NVpJQ75p
 aeacfU6DR3UAp/DccV5MCqEE1fH4GmLxOcOkkO/DPszNBMyGWO8UrRz2Jk+okWcCDdSo
 lqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Lp/57Kv3gzuXj/K9oQ77nASFzku70Zj4jK0Z7RozDsE=;
 b=UM3YVngumnNIFNlhqtyRCAN8AfgXIIEZOBm1FoP8ZYd5+wpQPjVN2/9/RX3HbbKT+n
 DFJYBy9IOAoZ3NPpjQii+DAq+CTxP4lnY2ZEvA09M5l7VZ8Pms+H9q2lr7ipOCNSQm9X
 U/pdn/ot5ibRFNoTltj6znaAlCMCgPRx/hfv+hBTh5ky5kuij5XFc7J4kJEBA9cBNYLG
 TLk5kmnYGmieN7gssf8d3MonFoD5DID6EVXhF3auiZF1qOXubfSUfIDTghdTA3rGuqLj
 s9d/TZb+Y++ndr6fpJF7+UHOOh4eW6CvJowYkYs9b9Vxi9OB3XG0mGONMGhGNv5Qwk8M
 HXAA==
X-Gm-Message-State: AOAM533H3YqgdeOHYAj+fgHy0H1tM1/bNuhrBezSIoXsUzEWHWRNt0Zz
 t3ckW17eDPYQ4wh6KPQJKqAvt0k/ki0rK695Z5DEcqna8GY9dUFnbMZHpmz/8gr1hyyJZBEdZGc
 fME6EesT8hlXTmZrOI7dRWe05X/CIYXDL9Csy
X-Received: by 2002:a05:6e02:ef2:: with SMTP id
 j18mr19983905ilk.69.1592090036463; 
 Sat, 13 Jun 2020 16:13:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJztT1frvvFPpkKu648hyiONgeEYkHge5KRR8FaxCVSOS07PFim7J0gL5UIgkxz52VKBRrECXA==
X-Received: by 2002:a05:6e02:ef2:: with SMTP id
 j18mr19983882ilk.69.1592090036227; 
 Sat, 13 Jun 2020 16:13:56 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id b8sm5368985ior.35.2020.06.13.16.13.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 16:13:55 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] media: rockchip/rga: Fix a reference count leak.
Date: Sat, 13 Jun 2020 18:13:49 -0500
Message-Id: <20200613231350.15504-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_161359_850320_25B3BB6E 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.206 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hansverk@cisco.com>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>, wu000273@umn.edu,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

pm_runtime_get_sync() increments the runtime PM usage counter even
when it returns an error code. Thus call pm_runtime_put_noidle()
if pm_runtime_get_sync() fails.

Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 36b821ccc1db..bf9a75b75083 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -81,6 +81,7 @@ static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
 
 	ret = pm_runtime_get_sync(rga->dev);
 	if (ret < 0) {
+		pm_runtime_put_noidle(rga->dev);
 		rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
 		return ret;
 	}
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
