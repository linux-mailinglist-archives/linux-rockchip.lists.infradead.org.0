Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2D64E501
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Jun 2019 11:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0AgmvEiVBMF/vtb6cPiEPpS8fdkvGU/9mznLQGtf1A=; b=sXzYOBHjuTES1O
	4ojEftEDNrY1Sfgb0Ze8OsgRpBB0z/1IiBaqVqLCdzs9Iuppw/wWzadHLtvOTa7GPCF/0cY/yAL/D
	QwMAzEZcnd1e85HzBrryIDZTVOlfViCNGb1BmcpoFWbScX6cmW6bxB9y6bxlc2txeFdZGx5m5k5kG
	tPCpRRvfbQxayWBmd8387gYyyTKvLgxGU9NIuQbYsAKgDgqAFQlnwzyI5to2lXWVF/F+4YEf1NxC4
	6dGo7cMU/UxGxBkK0fjPN+pIDGA2WjdITxHjg83rzODbNZaIUPR4NknoRqfMmobUe8fJAFwovxuf2
	rYaQr5TuCAgCI0fWVYCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGFn-0004ur-So; Fri, 21 Jun 2019 09:54:44 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heG0j-0006cE-0Z
 for linux-rockchip@lists.infradead.org; Fri, 21 Jun 2019 09:39:12 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 84AEA39A;
 Fri, 21 Jun 2019 17:38:54 +0800 (CST)
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
 P26442T139681813473024S1561109925843313_; 
 Fri, 21 Jun 2019 17:38:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d60f5c74f4e1c7cb04abe4e650bc4a59>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v4 4/6] rockchip: rk3399: Get bl31.elf via BL31
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, u-boot@lists.denx.de
References: <20190620100740.6560-1-jagan@amarulasolutions.com>
 <20190620100740.6560-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <6d6c40af-1946-d338-9135-ee3ee8b6031b@rock-chips.com>
Date: Fri, 21 Jun 2019 17:38:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190620100740.6560-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_023909_560597_23F56DEB 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan:


On 06/20/2019 06:07 PM, Jagan Teki wrote:
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
> ---
>  Makefile                               |  2 +-
>  arch/arm/mach-rockchip/make_fit_atf.py | 20 ++++++++++++++++++--
>  doc/README.rockchip                    |  4 ++--

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
>  3 files changed, 21 insertions(+), 5 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index a503ab9fc1..3ede10ff68 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1848,7 +1848,7 @@ clean: $(clean-dirs)
>  		-o -name 'dsdt.aml' -o -name 'dsdt.asl.tmp' -o -name 'dsdt.c' \
>  		-o -name '*.efi' -o -name '*.gcno' -o -name '*.so' \) \
>  		-type f -print | xargs rm -f \
> -		bl31_*.bin image.map
> +		bl31.c bl31.elf bl31_*.bin image.map
>  
>  # mrproper - Delete all generated files, including .config
>  #
> diff --git a/arch/arm/mach-rockchip/make_fit_atf.py b/arch/arm/mach-rockchip/make_fit_atf.py
> index 212bd0a854..e7d3846a13 100755
> --- a/arch/arm/mach-rockchip/make_fit_atf.py
> +++ b/arch/arm/mach-rockchip/make_fit_atf.py
> @@ -12,6 +12,7 @@
>  import os
>  import sys
>  import getopt
> +import logging
>  
>  # pip install pyelftools
>  from elftools.elf.elffile import ELFFile
> @@ -89,13 +90,17 @@ def append_conf_section(file, cnt, dtname, segments):
>      file.write('\t\tconfig_%d {\n' % cnt)
>      file.write('\t\t\tdescription = "%s";\n' % dtname)
>      file.write('\t\t\tfirmware = "atf_1";\n')
> -    file.write('\t\t\tloadables = "uboot",')
> +    file.write('\t\t\tloadables = "uboot"')
> +    if segments != 0:
> +        file.write(',')
>      for i in range(1, segments):
>          file.write('"atf_%d"' % (i))
>          if i != (segments - 1):
>              file.write(',')
>          else:
>              file.write(';\n')
> +    if segments == 0:
> +        file.write(';\n')
>      file.write('\t\t\tfdt = "fdt_1";\n')
>      file.write('\t\t};\n')
>      file.write('\n')
> @@ -171,8 +176,19 @@ def generate_atf_binary(bl31_file_name):
>  
>  def main():
>      uboot_elf = "./u-boot"
> -    bl31_elf = "./bl31.elf"
> +    bl31_elf = os.path.isfile("./bl31.elf")
>      fit_its = sys.stdout
> +    if bl31_elf:
> +        bl31_elf = "./bl31.elf"
> +    elif "BL31" in os.environ:
> +        bl31_elf=os.getenv("BL31");
> +    else:
> +        os.system("echo 'int main(){}' > bl31.c")
> +        os.system("${CROSS_COMPILE}gcc -c bl31.c -o bl31.elf")
> +        bl31_elf = "./bl31.elf"
> +        logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
> +        logging.warning(' BL31 file bl31.elf NOT found, resulting binary is non-functional')
> +        logging.warning(' Please read Building section in doc/README.rockchip')
>  
>      opts, args = getopt.getopt(sys.argv[1:], "o:u:b:h")
>      for opt, val in opts:
> diff --git a/doc/README.rockchip b/doc/README.rockchip
> index 264f7e4994..5680c075fa 100644
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
