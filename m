Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867B4228A0
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 May 2019 21:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RsAB4OJln8kAJif6r8eeGui4ee1KTbpT74rPnvwYBbU=; b=som9WF1CUilpQS
	4SCzfIeemxzNiwVzOQNpyRVTflX/Jzunf+kr1Lwpyq0s+OHtUsUcZc3vZpAC+FnXdvM5xcN2UjjYe
	AthvNwVxICMqpE4fBeRXIyrhWHnn7td7MEURfnE0Rcb9c+gjFTnIlxMrq5ShzmKXs0QV6PiVQUYxt
	hr4MMVfif6+MZsjGAaRnCn1hUpNN5I6bNSJf8sMc5vp1KwtXn4AjgFc4rFfE3DH6IP8sNkCdPm0jH
	49V+YW9qAXgLbP+K3WeK+hcGrWMCc6wM8Xkxx5NqnrRkwAut97zhSYuXwoHyRz5Y6ebB7t4FyF+SK
	UTSMusFo85jVvjxDLiSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSRtl-0001V9-4V; Sun, 19 May 2019 19:55:09 +0000
Received: from gateway-a.fh-trier.de ([143.93.54.181])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSRtg-0000Pt-6g
 for linux-rockchip@lists.infradead.org; Sun, 19 May 2019 19:55:07 +0000
X-Virus-Scanned: by Amavisd-new + Sophos + ClamAV [Rechenzentrum Hochschule
 Trier (RZ/HT)]
Received: from hochschule-trier.de (owm2.fh-trier.de [143.93.54.169])
 by gateway-a.fh-trier.de (Postfix) with ESMTP id 8BD4318499E4
 for <linux-rockchip@lists.infradead.org>;
 Sun, 19 May 2019 21:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha1; c=simple/simple; d=hochschule-trier.de;
 s=default; t=1558295315; bh=WXoMpG6yWD/NlCJYzZaKY4xATtw=;
 h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type;
 b=Fs/U01Vz8AUEK3Q5Jc80E1Gg4Ixeg51F/4xfsg9qEEZzhvILn2ZSeiy8VLaUCwuQE
 tsQouvN7nrdTXEugENCAvKdfsqodF3CXbYo+QZ138FvFigU5wwPoi22KHRRMk9ZwYp
 4RXZKFxWctEkzUUA+b6p/NrfbG5cun9JGNBxf05w=
From: "Eric Auer, EMW-MT" <auere@hochschule-trier.de>
To: linux-rockchip@lists.infradead.org
Subject: tuning spi-rockchip on rk3288
Date: Sun, 19 May 2019 21:48:35 +0200
Message-Id: <20190519194649.M28435@hochschule-trier.de>
X-Mailer: OpenWebMail 2.53 
X-OriginatingIP: 217.82.99.108 (auere)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_125504_695500_FE8D0ABE 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [143.93.54.181 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


Dear linux-rockchip experts,

please bear with me for a somewhat long mail about the creation of
some significant optimizations and extensions of the spi-rockchip
drivers, for which I would hope to find future usages, in part or
otherwise, thanks to the modern times of open source code licenses:

As part of a university project in the second half of 2018, I have
created extensive specialized patches for in particular the RK3288
spi-rockchip Linux driver, as well as a few related spots. Goal of
the project was fetching a high speed stream of A/D data via SPI,
ultimately sending the processed data over the GbE LAN network of
an Asus Tinker Board. While doing so, I also improved normal mode.

The modified driver features an autonomous A/D interaction mode
with a kernel thread to ask the A/D chip for data and fetch the
data when ready, then buffering it on the kernel side. This mode
is configurable for various A/D chips from the user space API.

Samples get time-stamped using the high resolution ARM counter,
using specialized code to keep the CPU overhead at a minimum.

Configurable rest times for the A/D chips are ensured by software,
to avoid the overhead of having to interact with "ready" or "busy"
flags by GPIO. Taking away control of some GPIO line or interrupt
linked to that, to reduce the driver overhead, seemed a bad idea.

There also is a matching user space tool to configure the mode,
read the data stream, process it and send it over a TCP/IP link.

In the less specialized parts of the SPI driver, I have reduced
I/O overhead where possible, while at the same time introducing
dynamic fast timeout detection of "stuck" SPI engine states. The
patched driver lacks energy saving mode support as part of trade
offs between speed and flexibility.

The driver can of course be used without the kernel thread just
like the classic spi-rockchip. Some additions for tuned A/D I/O
support can be enabled by "magic" flags while staying within the
normal context. In other words, they can work without said thread.

The idea was to change as few files as possible, hence the use of
magic flags instead of adding a whole API extension at all levels.

In the course of doing so, I also detected some issues with the
original driver, such as unsupported but reported as supported
features, or features that were easy to add. Also, I have patched
the device tree data to add the "high drive strength for higher
SPI clocks" values already expected by the SPI rockchip driver.

Long story short, I now have my grade and the permission to make
all my programming work related to it public, so I would like to
offer the sources to the SPI enthousiasts on this mailing list!

As said, the project is rather specialized, but there are plenty
of cherries to be picked for general use and maybe even somebody
from the realm of the ADC kernel drivers would be interested to
"lift" the pump thread part into that part of the kernel source.
Some bug fixes are useful for the drivers for all general uses,
not just my A/D goals. Others might enjoy the device tree fixes
or the trick to get high resolution timestamps with very low CPU
overhead.

Unfortunately I am not experienced with the linux-rockchip work
flow and community as a whole, although I have been keeping an
eye on the intense flow of patches sent to and discussed on this
list since July 2018.

So I would be glad to hear from some of you experienced kernel
experts who would have the time to receive my code, structure
the changes and put the interesting parts in the kernel or at
other places where the other Rockchip users can enjoy them.

That would be very nice of you! Thank you in advance.

My tests are based on the specs of the LTC2335, ADS8330,
ADAS3023 and LTC2357 A/D converter chips. Usually one, but
for some experiments two SPI interfaces of the Asus Tinker
Board with Rockchip RK3288 SoC / CPU with Linux 4.4.103 were
used. I am aware that this is not the newest kernel, but it
was the Tinker OS 2.0.7 Linux kernel back at the time, see
https://github.com/TinkerBoard/debian_kernel/tree/release

Using a newer compiler revealed indentation errors in some
wireless LAN drivers, so I also have patches for those:

drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b1ant.c
drivers/net/wireless/rockchip_wlan/rtl8723bs/hal/btc/halbtc8723b2ant.c
drivers/net/wireless/rockchip_wlan/rtl8814au/hal/rtl8814a/usb/rtl8814au_xmit.c
drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_mlme_ext.c
drivers/net/wireless/rockchip_wlan/rtl8814au/core/rtw_security.c

I have made big changes to drivers/spi/spi-rockchip.c while
keeping the include/linux/platform_data/spi-rockchip.h and
the Documentation/devicetree/bindings/spi/spi-rockchip.txt
unchanged. The other drivers/spi/spi-rockchip-... files
turned out to be abandoned parts of older Linux drivers
and include/linux/spi/spi.h stayed unchanged as well, so
at the moment, my custom user space tool is the only part
which uses new /dev/spidev... features. Otherwise, things
behaves in the classic way, plus bugfixes, minus suspend.

In experiments, while the code believed that 50 MHz SPI
clock would be feasible, the transmission was more stable
at 48 MHz. Also, as said, the "high drive strength" for
clocks above 24 MHz had to be activated via Device Tree,
in the file arch/arm/boot/dts/rk3288.dtsi as well as in
the arch/arm/boot/dts/rk3288-miniarm.dts sources.

For all changed files, I have archived original files
as reference and my patched file and unified diffs. As
said, the kernel space changes are limited to those
files mentioned in this mail. Of course I kept .config
and boot/hw_intf.conf used for my project as reference,
as well as my user space "data pump" (SPI to GbE LAN).

Of course there is a verbose paper about all activities,
but THAT is written in German. Yet of course I am happy
to answer all questions about my code by mail in English.

I would be very happy if my research and coding in 2018
would bring some insights, amusement and improvements to
the Linux Rockchip world in some way. Please contact me
to get a copy of all code, including "before", "after"
and "diff" of all changed files. As it is about 350 kB
zipped, I hesitate to send it to the whole mailing list.

Thank you for reading! I hope some of you became curious.

Regards, Eric



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
