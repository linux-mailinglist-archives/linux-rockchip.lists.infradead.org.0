Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF3E499EB
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 09:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVMOsRH/3n9k1qpSennrBQ01cPM4J+Vdgq70+jLgo5U=; b=fRBpRi7xtkkcl6
	S0/cPeH7Wh5MCbhR4lVvTzX3YOOKn7CtJ5minx61an6675yK8itMXC7T8rFPifpBffiufXqQVWNKS
	nvdQb7FXanpqKBGYg8k8QJZCMhICaNZzwvFgkgPgMRkVPAB2eNdak90GJco7rvt6Nni9c/Z1KOFPA
	e6GU7udZwVNAqKcY8w1nbDJ1Tqk0rT3ejn+GmkaTU+J4OIoVgLacr3TXQrvc8n7ug+h/L34TdTWdo
	U8ANcUJUtS2j5bJJJdKhs0MzRDefg+KKDZCdZ/D+7IL/G0Pe2CAUTmFlaR6lR2m2WNmeVAN8JLqBV
	tHXQP+Nm0pRgBs7p+aag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8Fz-0003C8-2F; Tue, 18 Jun 2019 07:10:15 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8Fv-0002Vh-2S
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 07:10:12 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.156])
 by regular1.263xmail.com (Postfix) with ESMTP id EABAC29B;
 Tue, 18 Jun 2019 15:10:00 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.214] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P15897T140299215021824S1560841798589959_; 
 Tue, 18 Jun 2019 15:09:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5e0e9e6797e4f9abe5dc8d4a7d25b46b>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 0/6] rockchip: rk3399: Make u-boot.itb as BUILD_TARGET
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
 <CAMty3ZB4KBKnrhxSG2EsQDg1fAaEDQ_T1swVnZiaKcbtkKc=OA@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <853f6ec1-a818-ae69-35b5-ef36fadc9ca1@rock-chips.com>
Date: Tue, 18 Jun 2019 15:09:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAMty3ZB4KBKnrhxSG2EsQDg1fAaEDQ_T1swVnZiaKcbtkKc=OA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_001011_306342_3000E104 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 U-Boot-Denx <u-boot@lists.denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,


On 06/13/2019 02:53 PM, Jagan Teki wrote:
> Hi Kever,
>
> On Wed, May 8, 2019 at 12:23 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>> RK3399 TPL changes are merged recently which I was thinking
>> of waiting for next MW. so this series skip binman changes
>> from previous version[1] and have only BUILD_TARGET changes.
>>
>> BINMAN changes would need another rework, where we need to consider
>> the TPL image as well and that would send separately.
>>
>> CHanges for v3:
>> - skip binman changes
>> - rebase on u-boot-rockchip/master
>>
>> [1] https://patchwork.ozlabs.org/cover/1092198/
>>
>> Jagan Teki (6):
>>   Makefile: clean image.map
>>   Makefile: clean bl31_*.bin
>>   travis.yml: Add pyelftools install entry
>>   rockchip: rk3399: Get bl31.elf via BL31
>>   board: puma: Get bl31.bin via BL31 and rk3399m0.bin via PMUM0
>>   Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
> I think you hold for this with puma changes? any further comments
> please let me know.
>

Yes, one reason is not get response from puma board.
And I think this does not break the board support but maybe
break the build process if not all the environment has export as expected?

Thanks,
- Kever



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
