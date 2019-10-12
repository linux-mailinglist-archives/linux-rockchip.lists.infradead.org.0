Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB46D4F08
	for <lists+linux-rockchip@lfdr.de>; Sat, 12 Oct 2019 12:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BUr8ibielMax5QHgfYjLYtJt0JuRj25fl0IJKYoVX7M=; b=ndyLOLaST7r+hEKYMrKNZg29N
	sY1Ls7XTeRIPpoCeTVMJA1OZ9LVZo21b2omrO/1JS9yJQitBaHSTGDDEz03Y3tgKFu6NzfsMHDbNm
	vFTgXgUXfWRLsREVHLKmOlwc+Oip3N/OiEucQvHaQ00c6X5z1JK1B+uuYL+KFUmr1+XTQhm14RYvQ
	zAzTcxWtDJftaIWkyEym+Ssz4eE/IdbSSMSZmAsICVEfZGdyVWNvdPDGdrGYCPTGmtat3yHvvn70H
	ARyQN6CdWOJ7OhaCHR62w034jTGMIF2EL1+xNd1QwNfP+xeEkUPxyd0miD/K+iMTOQjoLdIptl5Lm
	wBinpZ9XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJEnB-0005qT-3x; Sat, 12 Oct 2019 10:38:33 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJEn6-0005pT-2e
 for linux-rockchip@lists.infradead.org; Sat, 12 Oct 2019 10:38:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570876691;
 bh=tbCsc5UqOkAhMDUwwqvqpr77x8Fqjv6+Shjgu8uXfKU=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=DbrDJQQPFChw5E6QiVJmEKlUvDTBDy9A6ArIVpsJzFwhnwFXPGRJrdbgIZs6qXSI9
 P1+NiewWjF5VvygsSLdzSkfE2irA/5SumQJOihHuKL6LrbtTFlobkSvxK2RwVbbai0
 5LGMhx8Q6L1N77M+qVvh4h5tUIOoCxmoGfL2DcII=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [0.0.0.0] ([13.231.109.76]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N6bk4-1i0zca2P6s-018313; Sat, 12
 Oct 2019 12:38:11 +0200
Subject: Re: [U-Boot] [PATCH v3 00/57] ram: rk3399: Add LPDDR4 support
To: Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <310a4823-ce36-6152-2886-2bb6fcc0e328@gmx.com>
 <9816875f-6166-ce55-6ed5-211e6a40b4fe@gmx.com>
 <b75d1b23-78e4-01e0-77e0-26de152a8b89@rock-chips.com>
From: Qu Wenruo <quwenruo.btrfs@gmx.com>
Autocrypt: addr=quwenruo.btrfs@gmx.com; prefer-encrypt=mutual; keydata=
 mQENBFnVga8BCACyhFP3ExcTIuB73jDIBA/vSoYcTyysFQzPvez64TUSCv1SgXEByR7fju3o
 8RfaWuHCnkkea5luuTZMqfgTXrun2dqNVYDNOV6RIVrc4YuG20yhC1epnV55fJCThqij0MRL
 1NxPKXIlEdHvN0Kov3CtWA+R1iNN0RCeVun7rmOrrjBK573aWC5sgP7YsBOLK79H3tmUtz6b
 9Imuj0ZyEsa76Xg9PX9Hn2myKj1hfWGS+5og9Va4hrwQC8ipjXik6NKR5GDV+hOZkktU81G5
 gkQtGB9jOAYRs86QG/b7PtIlbd3+pppT0gaS+wvwMs8cuNG+Pu6KO1oC4jgdseFLu7NpABEB
 AAG0IlF1IFdlbnJ1byA8cXV3ZW5ydW8uYnRyZnNAZ214LmNvbT6JAU4EEwEIADgCGwMFCwkI
 BwIGFQgJCgsCBBYCAwECHgECF4AWIQQt33LlpaVbqJ2qQuHCPZHzoSX+qAUCXZw1oQAKCRDC
 PZHzoSX+qCY6CACd+mWu3okGwRKXju6bou+7VkqCaHTdyXwWFTsr+/0ly5nUdDtT3yEVggPJ
 3VP70wjlrxUjNjFb6iIvGYxiPOrop1NGwGYvQktgRhaIhALG6rPoSSAhGNjwGVRw0km0PlIN
 D29BTj/lYEk+jVM1YL0QLgAE1AI3krihg/lp/fQT53wLhR8YZIF8ETXbClQG1vJ0cllPuEEv
 efKxRyiTSjB+PsozSvYWhXsPeJ+KKjFen7ebE5reQTPFzSHctCdPnoR/4jSPlnTlnEvLeqcD
 ZTuKfQe1gWrPeevQzgCtgBF/WjIOeJs41klnYzC3DymuQlmFubss0jShLOW8eSOOWhLRuQEN
 BFnVga8BCACqU+th4Esy/c8BnvliFAjAfpzhI1wH76FD1MJPmAhA3DnX5JDORcgaCbPEwhLj
 1xlwTgpeT+QfDmGJ5B5BlrrQFZVE1fChEjiJvyiSAO4yQPkrPVYTI7Xj34FnscPj/IrRUUka
 68MlHxPtFnAHr25VIuOS41lmYKYNwPNLRz9Ik6DmeTG3WJO2BQRNvXA0pXrJH1fNGSsRb+pK
 EKHKtL1803x71zQxCwLh+zLP1iXHVM5j8gX9zqupigQR/Cel2XPS44zWcDW8r7B0q1eW4Jrv
 0x19p4P923voqn+joIAostyNTUjCeSrUdKth9jcdlam9X2DziA/DHDFfS5eq4fEvABEBAAGJ
 ATwEGAEIACYCGwwWIQQt33LlpaVbqJ2qQuHCPZHzoSX+qAUCXZw1rgUJCWpOfwAKCRDCPZHz
 oSX+qFcEB/95cs8cM1OQdE/GgOfCGxwgckMeWyzOR7bkAWW0lDVp2hpgJuxBW/gyfmtBnUai
 fnggx3EE3ev8HTysZU9q0h+TJwwJKGv6sUc8qcTGFDtavnnl+r6xDUY7A6GvXEsSoCEEynby
 72byGeSovfq/4AWGNPBG1L61Exl+gbqfvbECP3ziXnob009+z9I4qXodHSYINfAkZkA523JG
 ap12LndJeLk3gfWNZfXEWyGnuciRGbqESkhIRav8ootsCIops/SqXm0/k+Kcl4gGUO/iD/T5
 oagaDh0QtOd8RWSMwLxwn8uIhpH84Q4X1LadJ5NCgGa6xPP5qqRuiC+9gZqbq4Nj
Message-ID: <23d554e3-4345-25bd-f5be-00222485164c@gmx.com>
Date: Sat, 12 Oct 2019 18:37:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <b75d1b23-78e4-01e0-77e0-26de152a8b89@rock-chips.com>
X-Provags-ID: V03:K1:6CbkGPeXfYOyxlJ5flCBBotfDK8E8Ef7h9oL1/R05cHdGBAg77O
 O0bT27E4EFYSgddah8cbKwTol6/GfQdzds1z2t+bIpqOTiTKROwgG/dfQwoGqe34T9J9o34
 5nGSyEeGDeB4f/A1FuiVyVi28JUlIYaOwVP8WJckQVgYf5PlIhg63JVoRJn6ur0jSLwKU11
 JPrwy0qCwwxLp5miHi0Lg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XmGhbb5Cb5A=:dCPCCRuWsERhDtoRkFM37D
 Ru6i1XW4Tn329LW3kYNndEVbcaiLH2JPoFAgqd5oXSxYPuiMh5bGmnQSb3bGdRJjTuhlCnQRx
 V5TYE1n4W/3t9HiIdoTFcUG7KQvqI8k2gvmfcFPPsxSpYM0Ccu3QhaxLPfuKadSrQHCXro7JV
 WQ6hYaS3RukZcGl7p3W4aaZbFf/OMPMCRKyd2/tzrrQkSOh5ze1kvAeAZSN4E0oorJwp2E5ce
 J5IvLHki1rZw/jhdW3EjDVEySZEro2GHHpXATi0GeZP2AnTlvdjmU9eIQv4bqUCVPip0lt9CH
 qJOKxKRLqX6JciINQUmN243tbpiFGrAIOVIhbEq3y3YQreis3wP1WmLwsYZxEg3+01AdusCQR
 v9isRevEH8AlaoiLlgSEK4eJaEVEQmuY3l0Vq58tpHw3WViSf2QMRFu+4+p3ME1uK0QNIZjab
 +pVlTX+eMIiEvJ0DRqWygWMLr8My/cEagnpawNjuMVBkMCZ+pDL9yT5JvCQ4GZ/2NDOKWzoZc
 Q6X+uWRAcNsPgxNJKpD/fmR55pb8Rk5JeutDU+sNhkLWTKmCvJB3bPVkAJS4LmgtIJ0XXV4w/
 BxpfBwNY3Ep62c8fdRA6Lzk/SSZoNJXoRRPX2vm+y22jJPVEFWngIGhYFa2YVSHofRN3cNUgM
 5F21vYi6XUJejEwc0jb7HQhkRY59Z+Fi+F50j+XHWCBcIleER76EkDNtzlcOWUNrg1XIH5jbx
 iyAaWX4lmbPh2Zeaen+0pBbz4kWGyLHwWKvwZcBakse64we3FRQKELJBRa+vOC3m40iq3Lmsf
 4PIHIWBxHKuYlaGGqjY3NrBrp1KpXZ85H2jdj3T0yJTtNrBvyFcYSHkUFgYvgOKBBwsS+GGi+
 NaLU2Go8vF51tXAXHblOjnxJsfDnlkN4G0viAM+5csQSArVwWIR3lqNlaoMWQznMrKJJqw7V8
 q3ceRGmIUBt2narO8XlewFs1XPu2sujDiXNeS8EAESOdT5TM7i2Vc5DiK3cuFXM6sR12iFE4L
 oTdfh+uCKJpHYMHENcSWk8rCt+nDenF9Kw/A7/o3DbkD4/vSSwfDY2rcrSivRN7XU0vYeux04
 M9ahIcgeNlWJse5X/UhL9FTFP9TuiVNQQexn2813jV6Mu72QPJmWuZrvtDbVqAXzzSa2ZwOzN
 2BTj59AY6dfc5ncZPGiDKDUwgM6xwSgNarAVbYTUFqrvwIAJ7vsKsF9aDAaeGZNMCAWH3Dy2h
 nqoMNaV9GKnCsRQhq3CE26ZWlu7ZvFZYBojV534ECrJ5DUP+BJAnS5nvwFeU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_033828_416895_3BEA6D14 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (quwenruo.btrfs[at]gmx.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: multipart/mixed; boundary="===============8518518770850419275=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8518518770850419275==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="bP66AjoczJsd9IuK8IUEVwTljq9uLfPb6"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--bP66AjoczJsd9IuK8IUEVwTljq9uLfPb6
Content-Type: multipart/mixed; boundary="XIa8C7R43ZURUlJBeJH4UITWFEyqQ9Dw3"

--XIa8C7R43ZURUlJBeJH4UITWFEyqQ9Dw3
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 2019/10/8 =E4=B8=8A=E5=8D=888:31, Kever Yang wrote:
> Hi Qu and Mani,
>=20
>=20
> This patch has already on the mater, you can try with master code and
> use idbloader.img
>=20
> directly.
>=20
>=20
> Thanks,

Confirmed it works perfectly on RockPi 4, while the previous tag
v2019.04, it boots but could easily hit SError memory error.

Great work!

Thanks,
Qu
>=20
> - Kever
>=20
> On 2019/10/6 =E4=B8=8A=E5=8D=889:30, Qu Wenruo wrote:
>>
>> On 2019/10/6 =E4=B8=8A=E5=8D=889:05, Qu Wenruo wrote:
>>>
>>> On 2019/7/16 =E4=B8=8B=E5=8D=887:56, Jagan Teki wrote:
>>>> This is next revison of lpddr4 support on rk3399 compared to
>>>> previous set[1]. It has some changes based on the commit orders
>>>> and squashing few patches together and rest is same.
>>>>
>>>> Thanks to
>>>> - YouMin Chen
>>>> - Akash Gajjar
>>>> - Kever Yang
>>>> for supporting all the help on this work.
>>>>
>>>> Changes for v3:
>>>> - squash set_rate code in one patch
>>>> - tested in Rockpro64 and Rock-PI-4
>>> Great works! Can't wait to try them on both boards!
>>>
>>> Would you mind to setup a git repo for this large patchset?
>>> It would be much easier for other guys to test, other than fetching a=
ll
>>> the patches and apply them.
>> In fact the patchset can't be applied to current master due to conflic=
ts.
>> And furthermore the hash doesn't match any existing tree.
>>
>> Would you mind to rebase it to current master? Or at least a git repo =
so
>> I could try to rebase them.
>>
>> Thanks,
>> Qu
>>> Thanks,
>>> Qu
>>>
>>>> - order them in proper way
>>>> - rebase on master
>>>> Changes for v2:
>>>> - handle LPDDR4 code as part of CONFIG_RAM_RK3399_LPDDR4
>>>> - support data_training and set_rate via sdram_rk3399_ops
>>>> - add proper sys_reg_enc macros
>>>> - add new patch to rename variable sdram_params with params
>>>> - fix few commit messages.
>>>>
>>>> patch 0001 - 0018: add dram config enc macro
>>>>
>>>> patch 0019: configure phy IO in ds odt
>>>>
>>>> patch 0020: add LPDDR4 config
>>>>
>>>> patch 0021 - 0043: lpddr4 data training changes
>>>>
>>>> patch 0044 - 0046: syscon pmu support
>>>>
>>>> patch 0047: set 50MHz ddr clock
>>>>
>>>> patch 0048: set 400MHz ddr clock
>>>>
>>>> patch 0049: LPDDR4-400 timings
>>>>
>>>> patch 0050: LPDDR4-800 timings
>>>>
>>>> patch 0051 - 0052: lpddr4 set rate
>>>>
>>>> patch 0053: enable lpddr4 support on Rockpro64
>>>>
>>>> patch 0054: enable lpddr4 support on Rock-PI 4
>>>>
>>>> patch 0055: add LPDDR-100 timings via dts
>>>>
>>>> patch 0056: use LPDDR-100 timings on Rockpro64
>>>>
>>>> patch 0057: use LPDDR-100 timings on Rock-PI 4
>>>>
>>>> [1] https://patchwork.ozlabs.org/cover/1116734/
>>>>
>>>> Any inputs?
>>>> Jagan.
>>>>
>>>> Jagan Teki (57):
>>>> =C2=A0=C2=A0 ram: rk3399: Add ddrtype enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add channel number encoder macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add row_3_4 enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add chipinfo macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add rank enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add column enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add bk enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add dbw enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add cs0_rw macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add cs1_rw macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add bw enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Rename sys_reg with sys_reg2
>>>> =C2=A0=C2=A0 ram: rk3399: Update cs0_row to use sys_reg3
>>>> =C2=A0=C2=A0 ram: rk3399: Update cs1_row to use sys_reg3
>>>> =C2=A0=C2=A0 ram: rk3399: Add cs1_col enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add ddr version enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add ddrtimingC0
>>>> =C2=A0=C2=A0 ram: rk3399: Add DdrMode
>>>> =C2=A0=C2=A0 ram: rk3399: Configure phy IO in ds odt
>>>> =C2=A0=C2=A0 ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
>>>> =C2=A0=C2=A0 ram: rk3399: Add lpddr4 rank mask for ca training
>>>> =C2=A0=C2=A0 ram: rk3399: Add lpddr4 rank mask for wdql training
>>>> =C2=A0=C2=A0 ram: rk3399: Move mode_sel assignment
>>>> =C2=A0=C2=A0 ram: rk3399: Don't wait for PLL lock in lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Avoid two channel ZQ Cal Start at the same=
 time
>>>> =C2=A0=C2=A0 ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Configure BOOSTP_EN, BOOSTN_EN for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Map chipselect for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Configure tsel write ca for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Don't disable dfi dram clk for lpddr4, ran=
k 1
>>>> =C2=A0=C2=A0 ram: rk3399: Add IO settings
>>>> =C2=A0=C2=A0 ram: sdram: Configure lpddr4 tsel rd, wr based on IO se=
ttings
>>>> =C2=A0=C2=A0 ram: rk3399: Add tsel control clock drive
>>>> =C2=A0=C2=A0 ram: rk3399: Configure soc odt support
>>>> =C2=A0=C2=A0 ram: rk3399: Get lpddr4 tsel_rd_en from io settings
>>>> =C2=A0=C2=A0 ram: rk3399: Update lpddr4 vref based on io settings
>>>> =C2=A0=C2=A0 ram: rk3399: Update lpddr4 mode_sel based on io setting=
s
>>>> =C2=A0=C2=A0 ram: rk3399: Update lpddr4 vref_mode_ac
>>>> =C2=A0=C2=A0 ram: rk3399: Simplify data training first argument
>>>> =C2=A0=C2=A0 ram: rk3399: Handle data training via ops
>>>> =C2=A0=C2=A0 ram: rk3399: Add LPPDR4 mr detection
>>>> =C2=A0=C2=A0 arm: include: rockchip: Add rk3399 pmu file
>>>> =C2=A0=C2=A0 rockchip: rk3399: syscon: Add pmu support
>>>> =C2=A0=C2=A0 rockchip: dts: rk3399: Add u-boot, dm-pre-reloc for pmu=

>>>> =C2=A0=C2=A0 clk: rockchip: rk3399: Set 50MHz ddr clock
>>>> =C2=A0=C2=A0 clk: rockchip: rk3399: Set 400MHz ddr clock
>>>> =C2=A0=C2=A0 ram: rk3399: Add LPPDDR4-400 timings inc
>>>> =C2=A0=C2=A0 ram: rk3399: Add LPPDDR4-800 timings inc
>>>> =C2=A0=C2=A0 ram: rk3399: Add set_rate sdram rk3399 ops
>>>> =C2=A0=C2=A0 ram: rk3399: Add lpddr4 set rate support
>>>> =C2=A0=C2=A0 configs: rockpro64: Enable LPDDR4 support
>>>> =C2=A0=C2=A0 configs: rock-pi-4: Enable LPDDR4 support
>>>> =C2=A0=C2=A0 rockchip: dts: rk3399: Add LPDDR4-100 timings
>>>> =C2=A0=C2=A0 rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
>>>> =C2=A0=C2=A0 rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi
>>>>
>>>> =C2=A0 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0=C2=A0=C2=A0 1 +
>>>> =C2=A0 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0=C2=A0=C2=A0 1 +
>>>> =C2=A0 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0 | 1537 +++++++++++++++
>>>> =C2=A0 arch/arm/dts/rk3399-u-boot.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=
 4 +
>>>> =C2=A0 .../include/asm/arch-rockchip/pmu_rk3399.h=C2=A0=C2=A0=C2=A0 =
|=C2=A0=C2=A0 72 +
>>>> =C2=A0 .../include/asm/arch-rockchip/sdram_common.h=C2=A0 |=C2=A0=C2=
=A0 31 +
>>>> =C2=A0 .../include/asm/arch-rockchip/sdram_rk3399.h=C2=A0 |=C2=A0=C2=
=A0 29 +-
>>>> =C2=A0 arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |=C2=A0=C2=A0=C2=
=A0 8 +
>>>> =C2=A0 configs/rock-pi-4-rk3399_defconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 1 +
>>>> =C2=A0 configs/rockpro64-rk3399_defconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 1 +
>>>> =C2=A0 drivers/clk/rockchip/clk_rk3399.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 8 +
>>>> =C2=A0 drivers/ram/rockchip/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0 7 +
>>>> =C2=A0 .../ram/rockchip/sdram-rk3399-lpddr4-400.inc=C2=A0 | 1570 +++=
++++++++++++
>>>> =C2=A0 .../ram/rockchip/sdram-rk3399-lpddr4-800.inc=C2=A0 | 1570 +++=
++++++++++++
>>>> =C2=A0 drivers/ram/rockchip/sdram_rk3399.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1726
>>>> ++++++++++++++---
>>>> =C2=A0 15 files changed, 6317 insertions(+), 249 deletions(-)
>>>> =C2=A0 create mode 100644 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi
>>>> =C2=A0 create mode 100644 arch/arm/include/asm/arch-rockchip/pmu_rk3=
399.h
>>>> =C2=A0 create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-4=
00.inc
>>>> =C2=A0 create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-8=
00.inc
>>>>
>>>
>>> _______________________________________________
>>> U-Boot mailing list
>>> U-Boot@lists.denx.de
>>> https://lists.denx.de/listinfo/u-boot
>>>
>=20
>=20


--XIa8C7R43ZURUlJBeJH4UITWFEyqQ9Dw3--

--bP66AjoczJsd9IuK8IUEVwTljq9uLfPb6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEELd9y5aWlW6idqkLhwj2R86El/qgFAl2hrQcACgkQwj2R86El
/qizPAf9FB5zYnYT5BLDI2xa4JZj4OCXXjOzM+xmgJNV3UgIvMEFQQZMRUKZpB2r
Sj/CKLmsOn2HwiBYxa/j5kgnyogQX57691036zOQ8CPL6Crch4KJ2bpQc1+Zecu8
RG0pVc9jsaPUNtkLz08aExpNrxGnm9BOAQzHOURjgHbcDAidCxcoewXEPU+6RpuI
fRYPVSS8AAJuZzbwrPuhm5HNqcwQZ6bQB0TfF3MAUmsloRa9nUl9eLnbXfK/UWn5
YoaTe2RZfIW6TyCwwFQ7S1OQRPIlCg6XrBtUTzpw2QLrPsM9PTCANBRVUPiiBhUS
japO4InnNaZ+FY9ZsOWFnB7UHEHycw==
=jyso
-----END PGP SIGNATURE-----

--bP66AjoczJsd9IuK8IUEVwTljq9uLfPb6--


--===============8518518770850419275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8518518770850419275==--

