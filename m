Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2B449CBC
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 11:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sv7dXDX0oZfy6BnOV0rsgRLcq/1P4fi+l+fjVVfPOUk=; b=mZ08e3uYPa2nrM
	tG0kJlWiMq53qSOPagK9wfaz53Ltp1fTZNV4lwgDwuvft9X9OL+YA1ADDdhG47RsYrIG6fTfGoCwS
	LXPu6BC7HEgBgmp6YlLLT8NGK0h8HdR3ZS0ajoH7tJoxAw/gz7Fc3dHaecSE6/K06LWYggswFKgMS
	OjFIrpQr4XtDTk6Kn6SeioRYZ7KUPnuXB1xgIb0mgNyCRnbGAvRFo0qbu76gGW5zHIVbqnvkTlElc
	/szfbULbAOrjf/oK4toGaPiTXYaWBZIDqm5yUc9noaMss9rxAtWBtfHnCoUqfHoO5N9MiqqkqA2tE
	Z4vb7Edy3cgYoC9wcowg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdA9q-0004bz-9V; Tue, 18 Jun 2019 09:12:02 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdA9l-0004bK-Ev
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 09:11:59 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 38E662E2;
 Tue, 18 Jun 2019 17:11:52 +0800 (CST)
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
 P15535T140569235941120S1560849107619169_; 
 Tue, 18 Jun 2019 17:11:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a7219ee6d83f44410609380a8e499b8d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re:_[PATCH_v3_0/6]_rockchip:_rk3399:_Make_u-boot.itb_as_B?=
 =?UTF-8?B?VUlMRF9UQVJHRVTjgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51eC1yb2NrY2hp?=
 =?UTF-8?Q?p-bounces+kever.yang=3drock-chips.com@lists.infradead.org?=
 =?UTF-8?B?5Luj5Y+R44CR?=
To: Jagan Teki <jagan@amarulasolutions.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
 <CAMty3ZB4KBKnrhxSG2EsQDg1fAaEDQ_T1swVnZiaKcbtkKc=OA@mail.gmail.com>
 <853f6ec1-a818-ae69-35b5-ef36fadc9ca1@rock-chips.com>
 <CAMty3ZA7W5eqx08NPgaJwq32vDWuafcqtKWg59XZEzi77QYSmA@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4fc00068-cedb-3ca6-7ed1-c5bdbbb081d3@rock-chips.com>
Date: Tue, 18 Jun 2019 17:11:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAMty3ZA7W5eqx08NPgaJwq32vDWuafcqtKWg59XZEzi77QYSmA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_021157_853478_7683E679 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 U-Boot-Denx <u-boot@lists.denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 06/18/2019 03:16 PM, Jagan Teki wrote:
> On Tue, Jun 18, 2019 at 12:40 PM Kever Yang <kever.yang@rock-chips.com> wrote:
>> Hi Jagan,
>>
>>
>> On 06/13/2019 02:53 PM, Jagan Teki wrote:
>>> Hi Kever,
>>>
>>> On Wed, May 8, 2019 at 12:23 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>>>> RK3399 TPL changes are merged recently which I was thinking
>>>> of waiting for next MW. so this series skip binman changes
>>>> from previous version[1] and have only BUILD_TARGET changes.
>>>>
>>>> BINMAN changes would need another rework, where we need to consider
>>>> the TPL image as well and that would send separately.
>>>>
>>>> CHanges for v3:
>>>> - skip binman changes
>>>> - rebase on u-boot-rockchip/master
>>>>
>>>> [1] https://patchwork.ozlabs.org/cover/1092198/
>>>>
>>>> Jagan Teki (6):
>>>>   Makefile: clean image.map
>>>>   Makefile: clean bl31_*.bin
>>>>   travis.yml: Add pyelftools install entry
>>>>   rockchip: rk3399: Get bl31.elf via BL31
>>>>   board: puma: Get bl31.bin via BL31 and rk3399m0.bin via PMUM0
>>>>   Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
>>> I think you hold for this with puma changes? any further comments
>>> please let me know.
>>>
>> Yes, one reason is not get response from puma board.
>> And I think this does not break the board support but maybe
>> break the build process if not all the environment has export as expected?
> It can't break the build, for not exporting cases the script will
> create dummy bl31 elf
Could you create dummy bl31.elf after check if there is one already there,
which is what we used to do instead of use BL31 env, and then this won't
break anything and we can migrate to use BL31 smoothly.

Thanks,
- Kever
>  and the bl31 variable assign it and finally
> trigger warning. fyi, the else statement on this patch [1] does what I
> mentioned.
>
> [1] https://patchwork.ozlabs.org/patch/1096505/
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
