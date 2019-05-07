Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C37E15950
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 07:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwZE5opWAKVf+JcawoActj4eLIs92fBGbhVZTZ85qZA=; b=jbE/eZBFTwrY5t
	FO0nx8dgRd0cAse75TU+e6c6sIp42zTZKacoMjSmiTxQ7g5+kGyqb42J++ufP3hxPygHJPnBCzOGN
	QTf9wHfCzleXfmM43we9v5lMpzYRrvFmri2273rKsT841Tp0v/ptsrDEs5FQL72hI8y0KxPLA502V
	U8sE6m+7/5HsiX5a9pzfg268+DU9j+1JrYvRqAzgNZ4H9Gv+KveONjiYEIGNSvVuRBr8iA8e5ZcSG
	+ePdMWV622E58X8xREABJImDPTOMUhHfBMkxUTaQfqKxEq8yo3T5sR8lFnnC69NJi5Q8AMJVn8R3J
	E36BqSQpiIPd2NuPlY8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNslf-0000x3-9E; Tue, 07 May 2019 05:35:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNslc-0000wP-7X
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 05:35:53 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C00C2087F;
 Tue,  7 May 2019 05:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557207352;
 bh=yQogMUBQPjk9nrgNv1yeng0T8x7R0pvQDhEzCVBPASc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BG579wH5o7r5gSH7s420RRjjYkl1Sgn7Txz9Vqaf7Beo3lpPHqz9+zYO53lG6Th5b
 mKURfxOHTRgXYAV2oZiQwLfz0qWiyBTaJweliLZsrilbVKOwKWfKpFhzqI7FntspAn
 /Gt9jkU91ca98AIVNmptMzF6lUCPYUJRNHvv+uzM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.0 99/99] drm/rockchip: fix for mailbox read
 validation.
Date: Tue,  7 May 2019 01:32:33 -0400
Message-Id: <20190507053235.29900-99-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190507053235.29900-1-sashal@kernel.org>
References: <20190507053235.29900-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_223552_348756_632B4BE7 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <alexander.levin@microsoft.com>,
 linux-rockchip@lists.infradead.org, Damian Kos <dkos@cadence.com>,
 dri-devel@lists.freedesktop.org, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Damian Kos <dkos@cadence.com>

[ Upstream commit e4056bbb6719fe713bfc4030ac78e8e97ddf7574 ]

This is basically the same fix as in
commit fa68d4f8476b ("drm/rockchip: fix for mailbox read size")
but for cdn_dp_mailbox_validate_receive function.

See patchwork.kernel.org/patch/10671981/ for details.

Signed-off-by: Damian Kos <dkos@cadence.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://patchwork.freedesktop.org/patch/msgid/1542640463-18332-1-git-send-email-dkos@cadence.com
Signed-off-by: Sasha Levin <alexander.levin@microsoft.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-reg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
index 5a485489a1e2..6c8b14fb1d2f 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
@@ -113,7 +113,7 @@ static int cdp_dp_mailbox_write(struct cdn_dp_device *dp, u8 val)
 
 static int cdn_dp_mailbox_validate_receive(struct cdn_dp_device *dp,
 					   u8 module_id, u8 opcode,
-					   u8 req_size)
+					   u16 req_size)
 {
 	u32 mbox_size, i;
 	u8 header[4];
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
