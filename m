Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDC44E894
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Jun 2019 15:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jc2MBTC6cBAw6CTpzc2OIB1YlxxzOFIcfa85b74aQsI=; b=Sr5fYhGwU/eGic
	31VbLoYxTQR5uKKrQx1YWvRwnFnes99tHj+QGS9s3GQzh2I2WosABZv+XxYpmIhg7zicx3R3QvZQS
	T1NEMxqTeId6OipnczhTFiKum2/LqqGurrqqEF7sOzeUP4nnO5ZlZwmQfcx7Jo4b4JByLm5fDoEal
	/DpggRsTDoh6WsObNyYwkwPaXbU291ckIRpTBNLx1BAK8An5vMzIZq2JA+wTlQzx0E/nzbiJX7Bcq
	En5i0EQmNuAaSFbfqNUOydjQGt8O7CFvqNBjZQNaYooGULenU8PxUWSMFRxmS/4A1qB8ctZUbcVqH
	KseEK0ODx80ngqncn3Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heJHQ-0000m7-Aj; Fri, 21 Jun 2019 13:08:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heJH9-0000Uv-FT
 for linux-rockchip@lists.infradead.org; Fri, 21 Jun 2019 13:08:22 +0000
Received: from p57b77384.dip0.t-ipconnect.de ([87.183.115.132]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1heJGz-0000xo-EW; Fri, 21 Jun 2019 15:08:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [U-Boot] [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
Date: Fri, 21 Jun 2019 15:08:08 +0200
Message-ID: <7040262.Yu9PGCMTeE@phil>
In-Reply-To: <54387ddeae322fba@bloch.sibelius.xs4all.nl>
References: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
 <5485782.mvTjYBxPra@phil> <54387ddeae322fba@bloch.sibelius.xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_060819_854240_288C79BF 
X-CRM114-Status: GOOD (  56.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, maxime.ripard@bootlin.com,
 kever.yang@rock-chips.com, paul.kocialkowski@bootlin.com, u-boot@lists.denx.de,
 nick@khadas.com, philipp.tomsich@theobroma-systems.com,
 linux-amarula@amarulasolutions.com, xieqinick@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 21. Juni 2019, 14:52:17 CEST schrieb Mark Kettenis:
> > From: Heiko Stuebner <heiko@sntech.de>
> > Date: Fri, 21 Jun 2019 13:34:16 +0200
> > =

> > Hi,
> > =

> > Am Donnerstag, 20. Juni 2019, 05:24:32 CEST schrieb Kever Yang:
> > > On 06/20/2019 12:54 AM, Paul Kocialkowski wrote:
> > > > Le mercredi 19 juin 2019 =E0 09:42 +0800, Kever Yang a =E9crit :
> > > >> On 06/19/2019 12:12 AM, Mark Kettenis wrote:
> > > >>>> From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > >>>> Date: Tue, 18 Jun 2019 14:47:33 +0200
> > > >>>> On Tue, 2019-06-18 at 18:08 +0800, Kever Yang wrote:
> > > >>>>> On 06/18/2019 05:03 PM, Paul Kocialkowski wrote:
> > > >>>>>> On Tue, 2019-06-18 at 14:27 +0530, Jagan Teki wrote:
> > > >>>>>>> On Tue, Jun 18, 2019 at 1:55 PM Paul Kocialkowski
> > > >>>>>>> <paul.kocialkowski@bootlin.com> wrote:
> > > >>>>>>>> On Mon, 2019-06-17 at 15:24 +0800, xieqinick@gmail.com wrote:
> > > >>>>>>>>> From: Nick Xie <nick@khadas.com>
> > > >>>>>>>> Was this tested with SPL support? I don't see DRAM configura=
tion here
> > > >>>>>>>> so it seems that it relies on the non-free rockchip loader.
> > > >>>>>>>>
> > > >>>>>>>> If that is the case, could you please indicate that in the c=
ommit
> > > >>>>>>>> message?
> > > >>>>>>>>
> > > >>>>>>>> To maintainers: please do not merge this series before DRAM =
init and
> > > >>>>>>>> SPL support is available for these boards.
> > > >>>>>>>>
> > > >>>>>>>> It seems that other RK3399 boards were merged without SPL su=
pport and
> > > >>>>>>>> sofar, I have the feeling that nobody cared to explain how w=
e got into
> > > >>>>>>>> this broken situation. Please don't merge any more such boar=
d.
> > > >>>>>>> fyi: no rk3399 boards were merged w/o SPL. lpddr4 boards were=
 merged
> > > >>>>>>> with TPL-enabled (which was discussed on the threads, if you =
remember)
> > > >>>>>>> with below boot chain.
> > > >>>>>>>
> > > >>>>>>> rkbin (TPL) -> SPL -> U-Boot proper
> > > >>>>>>>
> > > >>>>>>> Same case for this board as well.
> > > >>>>>> Here is a quote from Philipp Tomsich on the thread we discusse=
d this:
> > > >>>>>>
> > > >>>>>> " On some boards, there will be no TPL and only a SPL stage th=
at will
> > > >>>>>> initialise DRAM (as the move to having TPL on the RK3399 is op=
tional).
> > > >>>>>>
> > > >>>>>> I agree with Paul that the DRAM init should be part of U-Boot =
whenever
> > > >>>>>> we add new boards and make an open DRAM init a prerequisite. "
> > > >>>>>>
> > > >>>>>> So even if I frequently confuse SPL and TPL, it doesn't change=
 the fact
> > > >>>>>> that no board should be merged without proper DRAM init.
> > > >>>>>>
> > > >>>>>> Please stop pushing for merging these boards. I'm not sure wha=
t we
> > > >>>>>> should do about the boards that were merged already without DR=
AM init,
> > > >>>>>> but maybe they should be reverted.
> > =

> > > >>>>> I don't think we have to have full DRAM init source code for ea=
ch
> > > >>>>> board before we can merge it, I believe most of the board on U-=
Boot
> > > >>>>> mainline need to removed due to this rule. There are so many bo=
ards
> > > >>>>> from different vendor need a binary loader before U-Boot, and I=
 can
> > > >>>>> see only very few drivers for dram at driver/ram/, and I believ=
e rockchip
> > > >>>>> is already the most open vendor on this area.
> > =

> > > >>>> Well, I am not talking about full DRAM init source code as in dy=
namic
> > > >>>> link training. I am talking about having at least static DRAM re=
gister
> > > >>>> configuration values, =

> > =

> > > >> I can tell you that this is no work for all the boards, you can se=
e how
> > > >> rockchip lpddr4(WIP, send by Jagan) driver works.
> > =

> > > > I thought that LPDDR4 works the same as other types of DRAM where we
> > > > have a dtsi array with timings configuration. Of course, some more
> > > > registers need to be set up, but we already have support for that or
> > > > it's quite close (for LPDDR4).
> > >
> > > >>>> which is present for a good number of rockchip
> > > >>>> boards.
> > > >> No, there is no rockchip board only have static DRAM register
> > > >> configuration values, that maybe happens in other vendor.
> > >
> > > > I was implying that, as far as I know, it is the case for DRAM timi=
ngs
> > > > on Rockchip as well as most of the platforms that I know of. In the
> > > > end, any code handling DRAM will end up writing timings to the
> > > > controller's registers. If the DRAM is part of the PCB and doesn't
> > > > change/move, then the timings don't change in particular.
> > > >
> > > > Is there something specific about Rockchip that makes it require
> > > > different DRAM timings at each boot?
> > >
> > > >>>> Of course, it would be best if Rockchip would consider releasing=
 this
> > > >>>> source code, =

> > > >> Rockchip already release all the DRAM init source code, including =
DDR3 ,
> > > >> LPDDR3,
> > > >> and LPDDR4(wip). You can see the driver at driver/ram/rockchip/ for
> > > >> everything,
> > > >> which is not only static register configuration.
> > > >> As I have said, rockchip is already the most open vendor in this a=
rea
> > > >> till now, I don't know
> > > >> if you have working on rockchip SoC based boards.
> > > > You are quite right about that, but I was thinking about the code to
> > > > calculate DRAM timings (with link-training and such) which is often=
 not
> > > > available as free software, and I am not aware of Rockchip having
> > > > released that code (but feel free to correct me if I'm wrong).
> > > >
> > > >>>> which would be the easiest and friendliest solution
> > > >>>> towards the community here. Are there internal discussions ongoi=
ng
> > > >>>> about this? If not, it would be greatly appreciated to start such
> > > >>>> discussions and clearly identify what the blocking points are.
> > > >>>>
> > > >>>>> I won't use this rule to stop developers contribute there sourc=
e code,
> > > >>>> This is really sad and I think that Philipp was, like me, inclin=
ed to
> > > >>>> go towards the other direction.
> > > >>>>
> > > >>>>> for a board support, we only need the board to have the full do=
cumentation
> > > >>>>> about how to setup and boot with upstream U-Boot. and I think t=
he
> > > >>>>> most of people cares more about features in U-Boot proper. Ever=
ything
> > > >>>>> before U-Boot proper, you can use TPL/SPL or alternative to use=
 binary
> > > >>>>> from vendor, as you can see all over the U-Boot mainline now, a=
lthough
> > > >>>>> we encourage people to use full open source TPL/SPL.
> > > >>>>> Specifically for U-Boot Rockchip platform, I would like people =
to
> > > >>>>> support not only U-Boot
> > > >>>>> proper, but also for full SPL(ATF, OP-TEE support, itb image an=
d other
> > > >>>>> features)
> > > >>>>> support. And for DRAM init,
> > > >>>>> - if this belongs to SPL for this board, you must implement it =
or else
> > > >>>>> SPL won't work;
> > > >>>>> - if this does not belong to SPL for this board, you need imple=
ment full
> > > >>>>> function SPL;
> > > >>>>>     and you can either to have full function TPL with DRAM init=
(which is
> > > >>>>> prefered)
> > > >>>>>     or alternatively use binary loader from vendor.
> > > >>>> This is not really a technical argument here, more of a policy a=
rgument
> > > >>>> that ensures we have full free software support for the boards we
> > > >>>> support, and not only half-cooked support (that will most likely=
 never
> > > >>>> be completed as soon as something that works gets merged). So it=
 is a
> > > >>>> strategical decision, not a strictly pragmatic one.
> > =

> > > >>> While having full open source software support for boards is a no=
ble
> > > >>> goal, I think there should be some room for pragmatism here.  A
> > > >>> significant number of u_boot targets rely on closed source compon=
ents.
> > > >>> In the particular case of RK3399 the situation is better than for
> > > >>> other boards since you can combine the binary loader from the ven=
dor
> > > >>> with mainline U-Boot and mainline ATF to create a firmware where =
(as
> > > >>> far as we can tell) no closed soure component remains active after
> > > >>> U-Boot and ATF take over control.
> > > >>>
> > > >>>> I think reverting patches adding support for boards with no DRAM
> > > >>>> configuration at all would send a message in the right direction=
 here.
> > > >> As a developer, I agree on this, but as a maintainer, I know too m=
any
> > > >> developers not able to do it and what most of developers need is o=
ther
> > > >> features in U-Boot or SPL, and I would like the U-Boot mainline is=
 more
> > > >> active with more and more developers. So I'm afraid I agree with M=
ark
> > > >> at this time for the policy.
> > > > Maybe we need to provide tools ot make that process easier for ever=
yone
> > > > if it is really that hard. I don't really see what is so special ab=
out
> > > > DRAM timings that would imply that a regular developer doing a U-Bo=
ot
> > > > bringup couldn't figure things out, aside from the ability to dump =
said
> > > > timings.
> > > >
> > > >> If all the other SoC platforms can have the same rule for DRAM ini=
t driver
> > > >> is a mandatory instead of option, eg. brcom, qcom, mtk, omap, tegr=
a, stm,
> > > >> imx, aml, and all others, then I would very happy to follow the ru=
le.
> > > >> Rockchip is open for open source the DRAM driver, you have to know=
 this
> > > >> is the decision by the vendor, but not any of developers.
> > > >> On rockchip platform, developers no need to concern about the DRAM
> > > >> driver(which is pretty hard for most developers) because rockchip
> > > >> already contribute it.
> > > > Rockchip is indeed in a better position than other vendors where DR=
AM
> > > > init may not be available (or when it's impossible to run U-Boot ri=
ght
> > > > after the bootrom and do the DRAM init itself because of e.g. abusi=
ve
> > > > signature verification or lack of documentation).
> > > >
> > > > Since there is good DRAM support for Rockchip in place, we have an
> > > > opportunity to push developers to do the right thing and contribute
> > > > full support for the board. To me it is simply a matter of
> > > > acknowledging that bootloader support for a board without DRAM init=
 is
> > > > not useful bootloader support. Since we have the code in place to
> > > > support that, we can take the extra step and require that each board
> > > > contribution be useful in that aspect.
> > > >
> > > >> For the time now, I know there will be full DRAM driver for rockch=
ip SoC,
> > > >> so the SoC/board support could be step by step:
> > > >> U-Boot proper -> U-Boot + SPL(no DRAM init) ->U-Boot + SPL + TPL.
> > =

> > Keeping allowing a step-by-step approach could be beneficial I think,
> > in the kernel we also don't require full support for all peripherals on
> > initial submission ;-) .
> > =

> > And also for people starting out on a specific board having at least pa=
rtial
> > support is way easier than trying to figure out for example the vendor
> > u-boot. =

> > =

> > Maybe we could give this some sort of time limitation like
> > "binary ddr-init allowed till 2019-10-31" in Kconfig or somewhere
> > to give people the chance to do things piece by piece but still force t=
hem
> > to actually work on improving the situation.
> > =

> > As driver-side changes will generally benefit more socs/boards potential
> > removal after the time limit would only affect the board+dts itself.
> > =

> > So somewhat similar to what the kernel does with "staging", if you
> > keep working on improving it, it is allowed to stay.
> > =

> > This could be also applied to already included boards, like
> > "give it a working ddr-init till 2019-12-31 or it gets removed", simila=
rly
> > to how Tom handles devicemanager conversions currently
> =

> Still doesn't make sense to me unless you're going to enforce such a
> rule for all included boards that lack usable open-source DRAM
> initialization code.  Otherwise you're just punishing Rockchip for
> having a partial DRAM initialization code and are potentially sending
> the message that it's better not to attempt create open source DRAM
> drivers.

hmm, I'm not sure if I worded my reply just poorly? I was talking about
time-limiting the use of the _binary_ loader (as TPL or whatever) from
Rockchip's rkbin repo [0]. Which would mean no sourceful ddr-driver at all.

That case (using the binary) is a nice stepping stone to iterative
development, as you can concentrate on other parts of the boot process,
but when it overstays its welcome things begin to rot.

An example could be the rk3128 included in u-boot, no ddr-init at all
(requiring the binary ddr-init) and also no plans at all to create u-boot-
based ddr-init in the future. And the soc is so niche, that it sees no real
development.

In turn I would welcome any approach for a sourceful ddr-init as valid.
Because once you have something that at least works, you can iterate
on improving it.


[0] https://github.com/rockchip-linux/rkbin/tree/master/bin/rk33
All the foobar_ddr_fooMHz.bin files




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
