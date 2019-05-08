Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E184D17249
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 09:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3idh4XUHftbWjpvu6uJj6JIqpOqBZeafi2rtoT2aKc=; b=ODkup30rwcOm5b
	0KdzOE9JVjEr21TD1WwjME45uNgvVtwrjVb8yR4TMuMpKeCEbDPggr2cc4NZlUYxTJ/SSxGZyQTUZ
	vP/ACA1v+S7Cibil8LyAud3ApEE4waslcIMLvF2h0SFArFaCkM9vS+qHXNxoLz5rh14ZAbA7to9Xa
	Sklx5fLu2XY3eBkemG/oNTo5NMIhJxGfmFY/USTzQGgraPjhqEU8EJsKwz/uAjtR7aoIErLBG4BLw
	h5MTbUOExgspqKcC5yaDvdx4HiSW6LjrwXnxuf7xjHNAp5YLdkkHqVD+Fy/2oS/D0kWs0Qs64MyaY
	jvI9WkBvb32AXhd72Eow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGev-0008D3-Gx; Wed, 08 May 2019 07:06:33 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGer-0008Cj-Lf
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 07:06:31 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 891922A0;
 Wed,  8 May 2019 15:06:27 +0800 (CST)
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
 P31737T140211255318272S1557299179174901_; 
 Wed, 08 May 2019 15:06:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ef0c58c3a7e253f1de4cbe86eb669128>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 4/6] rockchip: rk3399: Get bl31.elf via BL31
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
 <20190507185215.15441-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <3d6b28e8-1ff4-bf2c-b5a9-a97d675b2c3b@rock-chips.com>
Date: Wed, 8 May 2019 15:06:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507185215.15441-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_000630_060123_4DF5195B 
X-CRM114-Status: GOOD (  16.11  )
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
> Right now rockchip platform need to copy bl31.elf into u-boot
> source directory to make use of building u-boot.itb.
>
> So, add environment variable BL31 like Allwinner SoC so-that the
> bl31.elf would available via BL31.
>
> If the builds are not exporting BL31 env, the make_fit_atf.py
> explicitly create dummy bl31.elf in u-boot root directory to
> satisfy travis builds and it will show the warning on console as
>
>  WARNING: BL31 file bl31.elf NOT found, resulting binary is non-functional
>  WARNING: Please read Building section in doc/README.rockchip
>
> Note, that the dummy bl31 files were created during not exporting
> BL31 case would be removed via clean target in Makefile.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  Makefile                               |  2 +-
>  arch/arm/mach-rockchip/make_fit_atf.py | 11 ++++++++++-
>  doc/README.rockchip                    |  4 ++--
>  3 files changed, 13 insertions(+), 4 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 64c7976f7e..c5078b95b7 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1814,7 +1814,7 @@ clean: $(clean-dirs)
>  		-o -name 'dsdt.aml' -o -name 'dsdt.asl.tmp' -o -name 'dsdt.c' \
>  		-o -name '*.efi' -o -name '*.gcno' -o -name '*.so' \) \
>  		-type f -print | xargs rm -f \
> -		bl31_*.bin image.map
> +		bl31.c bl31.elf bl31_*.bin image.map
>  
>  # mrproper - Delete all generated files, including .config
>  #
> diff --git a/arch/arm/mach-rockchip/make_fit_atf.py b/arch/arm/mach-rockchip/make_fit_atf.py
> index d1faff1957..327875d87b 100755
> --- a/arch/arm/mach-rockchip/make_fit_atf.py
> +++ b/arch/arm/mach-rockchip/make_fit_atf.py
> @@ -10,6 +10,7 @@ usage: $0 <dt_name> [<dt_name> [<dt_name] ...]
>  import os
>  import sys
>  import getopt
> +import logging
>  
>  # pip install pyelftools
>  from elftools.elf.elffile import ELFFile
> @@ -194,8 +195,16 @@ def get_bl31_segments_info(bl31_file_name):
>  
>  def main():
>      uboot_elf="./u-boot"
> -    bl31_elf="./bl31.elf"
>      FIT_ITS=sys.stdout
> +    if "BL31" in os.environ:
> +        bl31_elf=os.getenv("BL31");
> +    else:
> +        os.system("echo 'int main(){}' > bl31.c")
> +        os.system("${CROSS_COMPILE}gcc -c bl31.c -o bl31.elf")
> +        bl31_elf="./bl31.elf"
> +        logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
> +        logging.warning(' BL31 file bl31.elf NOT found, resulting binary is non-functional')
> +        logging.warning(' Please read Building section in doc/README.rockchip')
>  
>      opts, args = getopt.getopt(sys.argv[1:], "o:u:b:h")
>      for opt, val in opts:
> diff --git a/doc/README.rockchip b/doc/README.rockchip
> index ca4d6473b0..98a3824e2c 100644
> --- a/doc/README.rockchip
> +++ b/doc/README.rockchip
> @@ -149,8 +149,8 @@ For example:
>  	=> make realclean
>  	=> make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399
>  
> -	(copy bl31.elf into U-Boot root dir)
> -	=> cp build/rk3399/release/bl31/bl31.elf /path/to/u-boot
> +	(export bl31.elf)
> +	=> export BL31=/path/to/arm-trusted-firmware/build/rk3399/release/bl31/bl31.elf
>  
>     - Compile PMU M0 firmware
>  




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
