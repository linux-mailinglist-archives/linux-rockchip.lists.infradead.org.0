Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A1D17248
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 09:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpTsvquJZhfPTfI++aTAsGTgABXYv58NMCew1XWReAI=; b=SWWAdDY0q0fTKH
	bX3XiBDnMDqMlaYEHCcuLPxvxiwbQYwpjWgAuqlmmHqAu6OhF9wP9RoELadc+XonWX2vNYFSJiRPK
	cnTeg9CV3vw51BziJWhOLfJDWOYVlq/4tYfc1kC1ZnLyk8ziGq6xzJaS298ONxfFAtTyVydwfUmWY
	pfnJxLe7A+a4UvCpW7d6qlNnTFt0A9Waave80N95AG/PrFPQeVSiOwnTpnJy6nanKKGH3VucWHYv7
	ucZMMI6aj9FA9SOH1p6FR0M+5OTd4Bz9s5/zYIRRZUACtFOBzI2rX5eCj2Iq4YgZ81jA90BqvL0IL
	WuOfIwUwZ+L9U1/1+C6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGdY-0007aQ-Tz; Wed, 08 May 2019 07:05:08 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGdU-0006wR-5z
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 07:05:06 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 04B539DE;
 Wed,  8 May 2019 15:05:02 +0800 (CST)
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
 P31737T140211234338560S1557299093441406_; 
 Wed, 08 May 2019 15:05:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f4cd729707b3bfb1a7351ee8dad12940>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 3/6] travis.yml: Add pyelftools install entry
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
 <20190507185215.15441-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <bb264586-e2f4-bdbb-fce7-140e9f06792b@rock-chips.com>
Date: Wed, 8 May 2019 15:04:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507185215.15441-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_000504_615794_A2CAE722 
X-CRM114-Status: GOOD (  13.50  )
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
> Currently rockchip platform is using explicit 'make u-boot.itb' for
> building u-boot.itb but if we enable CONFIG_BUILD_TARGET as 'u-boot.itb'
> then the resulting u-boot.itb directly will create by make.
>
> But, that indeed make travis build fail since it require python-pyelftools
> host package.
>
> So add pyelftools install entry as 'pip install pyelftools', this would
> create pyelftools on travis host which are required to build rk3399 itb.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  .travis.yml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/.travis.yml b/.travis.yml
> index 8bd49ef1a5..94b795ef21 100644
> --- a/.travis.yml
> +++ b/.travis.yml
> @@ -50,6 +50,7 @@ install:
>   - . /tmp/venv/bin/activate
>   - pip install pytest==2.8.7
>   - pip install python-subunit
> + - pip install pyelftools
>   - grub-mkimage -o ~/grub_x86.efi -O i386-efi normal  echo lsefimmap lsefi lsefisystab efinet tftp minicmd
>   - grub-mkimage -o ~/grub_x64.efi -O x86_64-efi normal  echo lsefimmap lsefi lsefisystab efinet tftp minicmd
>   - mkdir ~/grub2-arm




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
