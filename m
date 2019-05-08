Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF38E17243
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 09:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSbDl3s5ly962tv2nCi1kEuSOcR4XyV6W/6BT1UcHLQ=; b=I7UMWf9Exb/TSV
	pKZWfbIml1J+xneUr6WBtETnzeGUsPiHq7Yr+USEVXRhhekfYEmr1UQAidEWogiEVJ00d+0GROK0j
	YJ25WPRbtYROEGfPSCITFBm7t3zinYwBwRt/VP0RYpU0eYrD00WDR9+HOcODzxoY8IEoJ9RYDCrZ2
	t9AK7U5Ao8tTx4DiUz5LyA1JVVNP1YCVaeObBL5ux1hAKLC06fgjMP4XtrxwA422Vd5ciX9uSA8j8
	hdmyT7g92FcomFg1J7yM+wNoUQAwVnGV1iYK84K0zmgaTqeDAkpbL6+srXJa2HVRhzWJCFvIXXk2c
	i6Q4uZrgPvnoR/WXKAZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGcj-0006ef-Ck; Wed, 08 May 2019 07:04:17 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGcg-0006e5-Ac
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 07:04:15 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id 705CB516;
 Wed,  8 May 2019 15:04:10 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P18796T140244744681216S1557299042998970_; 
 Wed, 08 May 2019 15:04:09 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5ffb7d3309e7e412755529e971cf0c68>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 1/6] Makefile: clean image.map
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
 <20190507185215.15441-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <cf0b8d68-12b0-5a3f-7580-b4eeca920129@rock-chips.com>
Date: Wed, 8 May 2019 15:04:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507185215.15441-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_000414_537159_616234A7 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 05/08/2019 02:52 AM, Jagan Teki wrote:
> binman tools for creating single image build will create image.map
> at the end, which has information about binman image node details.
>
> current u-boot, is unable to clean this image.map so add a command
> entry in clean target in Makefile.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index d6a6ef19ab..de11446ed3 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1813,7 +1813,8 @@ clean: $(clean-dirs)
>  		-o -name modules.builtin -o -name '.tmp_*.o.*' \
>  		-o -name 'dsdt.aml' -o -name 'dsdt.asl.tmp' -o -name 'dsdt.c' \
>  		-o -name '*.efi' -o -name '*.gcno' -o -name '*.so' \) \
> -		-type f -print | xargs rm -f
> +		-type f -print | xargs rm -f \
> +		image.map
>  
>  # mrproper - Delete all generated files, including .config
>  #




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
