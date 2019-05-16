Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B65B2004F
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 09:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iAOnx4vsEiLggGsrKUFksDLyEcyNcrfJqS0KjEh/95k=; b=NdxaFVqUE7z/L1/yQbSExIlOsh
	QuQSRVA23CdKVO+pbhBHKq22rHAMWLzf1rypWspJ0EYwc7lVehNTFrPiXIqT9rCal2bO3lYeID0fm
	5sibmqSfNZ2+N7pXe2SMa2xpfgVJwwcYYCj8EjNVHt+I5saG2W+8gll/OdLhnwTNfEaxk3gjq4RmZ
	hp14W7Qkr8ovh6NWUWoB8287GsN0GNmK5zGMLhzCw59h9Au7leZRml4N9tmaCddW3T68gdEidhEQ/
	xumGjWHVWXHhZgDA3rL10wjTdjURd1AfOpNVQkorA4Vruh3vRsC4yAXYhjRQJVrnxSalil2Ca0kfN
	tq4+ylHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRApm-0008N4-TU; Thu, 16 May 2019 07:29:46 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRApC-0007Zq-5y; Thu, 16 May 2019 07:29:12 +0000
Received: from zhangqing?rock-chips.com (unknown [192.168.167.227])
 by regular1.263xmail.com (Postfix) with ESMTP id B67CC8AA;
 Thu, 16 May 2019 15:29:02 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P7747T139724561819392S1557991736066321_; 
 Thu, 16 May 2019 15:29:02 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <2148eaae9c4abcde01f5eb8d8c275f3c>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/6] clk: rockchip: fix up the frac clk get rate error
Date: Thu, 16 May 2019 15:28:52 +0800
Message-Id: <1557991736-13580-3-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
References: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_002910_378120_BDCAD576 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

support fractional divider with only one level parent clock

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index e04bf300ea0a..0256a99f06f3 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -195,16 +195,21 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 	if (((rate * 20 > p_rate) && (p_rate % rate != 0)) ||
 	    (fd->max_prate && fd->max_prate < p_rate)) {
 		p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
-		p_parent_rate = clk_hw_get_rate(p_parent);
-		*parent_rate = p_parent_rate;
-		if (fd->max_prate && p_parent_rate > fd->max_prate) {
-			div = DIV_ROUND_UP(p_parent_rate, fd->max_prate);
-			*parent_rate = p_parent_rate / div;
+		if (!p_parent) {
+			*parent_rate = p_rate;
+		} else {
+			p_parent_rate = clk_hw_get_rate(p_parent);
+			*parent_rate = p_parent_rate;
+			if (fd->max_prate && p_parent_rate > fd->max_prate) {
+				div = DIV_ROUND_UP(p_parent_rate,
+						   fd->max_prate);
+				*parent_rate = p_parent_rate / div;
+			}
 		}
 
 		if (*parent_rate < rate * 20) {
-			pr_err("%s parent_rate(%ld) is low than rate(%ld)*20, fractional div is not allowed\n",
-			       clk_hw_get_name(hw), *parent_rate, rate);
+			pr_warn("%s p_rate(%ld) is low than rate(%ld)*20, use integer or half-div\n",
+				clk_hw_get_name(hw), *parent_rate, rate);
 			*m = 0;
 			*n = 1;
 			return;
-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
