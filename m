Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA75B17244
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 09:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5OmHevePqEN0rpmX3NjHL6BBFt8OWn6+FHe7R9a4f8=; b=I7Req5kEyAT0a1
	WqY6TU9V6F5jqsoaEdGlupNw6rOxjALKxFlgqa1XsMdBxEP1jbotKswJAKfeVbcNDRpCqgqD1gV7s
	q0qJK4unzmF3wuaJe0ZBzL6LKUvIhLHW4zRe+rY6LPEtBRuE7VWExPkNZqFpH2YMi+Ur+gReC5z7G
	FjppRJQsgL/cNsceKxKCzz5Raq5v8FJSZaMm2NrRYUSGfzg4onirdsXPvvy4dlWv6R90yHy7EEPCi
	U6lf8Xz7/+K/9ZNrk+/Q0TPy9W77fF+fjbXZ5aXp+oOa6f6kWtDm5fGB6CWtL/YAd5YTAWq2IzI7t
	Dkznpjwns/v5vRmrHbeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGcu-0006hI-SG; Wed, 08 May 2019 07:04:28 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGcr-0006go-Rv
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 07:04:27 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 97D1E4B6;
 Wed,  8 May 2019 15:04:21 +0800 (CST)
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
 P12364T140129807099648S1557299053480202_; 
 Wed, 08 May 2019 15:04:20 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9ff617372506ee8ced33bf02978e266e>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 2/6] Makefile: clean bl31_*.bin
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
 <20190507185215.15441-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <14fc355c-615a-c27e-6784-459c08954602@rock-chips.com>
Date: Wed, 8 May 2019 15:04:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507185215.15441-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_000426_075386_50420F92 
X-CRM114-Status: GOOD (  13.74  )
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
> Rockchip platform has its python script that would generate various
> bl31_*bin for creating u-boot.itb file by taking bl31.elf as input.
>
> These bl31_*.bin files are generated in u-boot root directory and
> have no rule to clean it up. so add support for it by adding in
> command entry of clean target in Makefile.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index de11446ed3..64c7976f7e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1814,7 +1814,7 @@ clean: $(clean-dirs)
>  		-o -name 'dsdt.aml' -o -name 'dsdt.asl.tmp' -o -name 'dsdt.c' \
>  		-o -name '*.efi' -o -name '*.gcno' -o -name '*.so' \) \
>  		-type f -print | xargs rm -f \
> -		image.map
> +		bl31_*.bin image.map
>  
>  # mrproper - Delete all generated files, including .config
>  #




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
