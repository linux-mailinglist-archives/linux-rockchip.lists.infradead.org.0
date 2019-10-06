Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29613CCDBF
	for <lists+linux-rockchip@lfdr.de>; Sun,  6 Oct 2019 03:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AyYUT8OZRIFcpR1B+Q6+txUS1b6gPhecanKqW4KRy0w=; b=eGgj8lyn3kwfkabyzgZSaWG+0
	jJWlI/Bcg6lmRL7/VwRvLDtoNdX8K45KlI0lGyPqjhOJyP0hKB+jlpmj+vHXcU50daWSH0xnB/gMk
	cogEkE8C0nfZpfOsbsfpbW1jALiNls+bexMXr59SppLMK5SGIWnSboI80K6kdASuhXPTBHvA4x6zT
	oYkdfWtmSskyxWh3surQ2cUrAvb3p54oi2hdXmdeqiotWEgBN9kEousGqtnyogzjW7QENdUdQK5hX
	uUHSIk3fQbSA5kLpOtKjryywuoCYRmPLFm2dFFuGR76atO4IpquCuFYaApUBqcbC4Pd53O5sfviip
	UJo8HAM6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGvOi-0002r9-NB; Sun, 06 Oct 2019 01:31:44 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGvOg-0002qy-V4
 for linux-rockchip@bombadil.infradead.org; Sun, 06 Oct 2019 01:31:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3fqP7sCYOSUR9Y4LoxtcB/q2BuSjkUjilv4LUfpSEIg=; b=BpADB+y9NJwO06c5fYvFs+J6Y
 3bB0y4vxqOT6j7zUjfnOA6x4UytSlV2BoB2subuqTM5c4GPEv5mn63qI8/EPaMgWWj20L7Ing1FdY
 BrVXOYTaFyuxNPnHrhzBYCAWwVyty7Z7sIaS6mkuemZEGIaQfC4jUu16AbQy7q0OLcP3M90gFlO2v
 CVyE5SjcLz6iCy5gLeNQAhHRoFo8jSakf628DbjMQVG53npdgwZeCQwYZzv57A6+jv7XMWk2hWosX
 XuM5iKHycqGAjKhOzna/dujHAcXzNESL01pZ7UHyipPT1TNKex5XNWtVhLh/FlHXuLNDgxgVsN+jO
 XMG0FWuiQ==;
Received: from mout.gmx.net ([212.227.17.21])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGvOb-0001xx-TU
 for linux-rockchip@lists.infradead.org; Sun, 06 Oct 2019 01:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570325460;
 bh=XF3+jL3TG6w3YrIDbBs1ii4YGXJJWXHUo4IheVkbxBA=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=dijLVJgjIylFRGd1rfcokIXCB7y6mu0SUY4S8Hf2IiB8ahOOa/TgHyzgsluasC560
 2mN5OAqKT+uu9rAV9pmM+WzNJppG7F7zLH67DWqb8Fl16uGYrIfOSpHZqmM0AJxhR1
 68Gu/vU79J5g9hVIm0wjnJsogAkL5YS9Ni9lI7Ng=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [0.0.0.0] ([13.231.109.76]) by mail.gmx.com (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1My32F-1huCCa0XxH-00zXen; Sun, 06
 Oct 2019 03:31:00 +0200
Subject: Re: [U-Boot] [PATCH v3 00/57] ram: rk3399: Add LPDDR4 support
From: Qu Wenruo <quwenruo.btrfs@gmx.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <310a4823-ce36-6152-2886-2bb6fcc0e328@gmx.com>
Message-ID: <9816875f-6166-ce55-6ed5-211e6a40b4fe@gmx.com>
Date: Sun, 6 Oct 2019 09:30:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <310a4823-ce36-6152-2886-2bb6fcc0e328@gmx.com>
X-Provags-ID: V03:K1:ptRai1AzRciGol4MCi0AFc0I55TH8dBbO0sjFL4M23cPHKs8zKI
 KgjsVFKO1C0HZE3AYgL+H3vEhRkzPKjACHrpJpBAwPy9Um9HA61rpZWcrPC5Cb991JExJUt
 AY/cZyiCxoV4OCjq96RlgBLEztJCJUkXfULGazoVSLqbtqWQr0k8noxBshE/8BDh1qQWTe9
 pjL+4/2DoVlMe2gZqK/lQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+GKZ6w9d+Jw=:/fvKnAsWnFcCUnqDcrh8iR
 O0A+MXSZGBQuGR7GEJIbNtB98mISaCC3LZEA3ZGmDZLYOFR87gRiQFC3yRDt5rBQm+m7VDcdZ
 GSfMlouLcRSorB5R0mUMfJOKl97OEB+r0nVKWNvxVN50z1j5VuZ0ChZrKv6jUV3vjQ1KGCLTb
 DB4FlYR1Nb+9wimZItYfALmiSvNfq9W2FMfwnnGtI36knJvMfDxG3iVbKLfzNeE60CMECROOK
 /j9yvTVeArXxWmLv+YXzLi9X+z/U2zEMUpSWoBp22sV4KjNgHVt7POLvFYsRd7BneRD2uN68w
 91n8UEg7ivkXuv7pXzwqFDl4QXRcx2qDUkBvyJuDL+GxFJZ+TuA5xfzOySLs73ZbQEFdLRlIt
 ZA8gEz+b1hrq2jONv5KY7XOr0IQud26OzrxWBWFxscCqIMYkWvZvLcT/FZ0jj5/uomfQ8L5So
 wA9wpHqEkJNlKr/kI4v7VbMNMIg0pVyBGUw+Ly/70rVdjJ7qM47eyaZfLp+i9aNlG+X9zxyLD
 lsID90a3G4M/VwBr0IBdTMsuCpEHEIPnK053BwnEzu100k/jRXMUtM//balOXasQri3CaJiTD
 T1d3BOPqFUkOiLI+PTUZbCndXAm7zed5h1xmR47BNlWPt1E+NwmtW813fU8bzKrFEBoCDsaWl
 +fmPNdyKCe0vB/5Pu9vnygt6LGthZQmk7L0OK2DfDuKtM0unrCsgP2FgKfsfYt8KP/FIjJZ7Q
 vHI9fc7h9CA7tujvdiF54C6F8eAq01+R7uozDdC+dOCd2tG4g5mB46pHcMwa+qaIhONKYQbQh
 4aV6FGQKdoLiNIXtMqy0P2ps25O5ktLwEpurNst8mmzHd0bIx4Bi1NMEnzt8uxr9NwmAiX+Jp
 mgwonFQRprHYbxuPcaO47dPvxigs3ThZ4RdU+3Z2QaSMPPWG1Nsb1ofKze8nLlTeokmQ5tE1m
 x8M3eCIyzd0pVQtfUzGpYgJ50vCzf46258OqlLqYk1bTHY26RxWC8sAAKFEjKA40md5oq0wW0
 PeCEtvLAEfee79QMfsuliZAxrlr1nbPD9Sfq1J94zgIdgeNIW9NXaPMpxZ7dOJjqBCSvETis/
 gecHpupXBMcLDVLiqk1xwlPWtr688uRSn9KmoCOP+pYA9Zz+FNhSxUBPL0aPMJch4rULzeEUr
 euzMlDjhJQFIOEKs2MLGR6Wye0hmlwQFsCC9uSz9O9eIjsP42Sk/8vFFAQriRfHmX8zj8LtV8
 n5ZwdWUH/B6ude8RYheevM4gC+CD4TjQa9YojFLBUoZgfTWoE7ro+TrI4+eU=
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (quwenruo.btrfs[at]gmx.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.21 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============8215711029097188294=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8215711029097188294==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ppXMFA5jRMebkMgx7Sod1Jn4vcA5ThLIC"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ppXMFA5jRMebkMgx7Sod1Jn4vcA5ThLIC
Content-Type: multipart/mixed; boundary="69t5cwQQpafqgp60KnIHt9rbIwZlWItQy"

--69t5cwQQpafqgp60KnIHt9rbIwZlWItQy
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 2019/10/6 =E4=B8=8A=E5=8D=889:05, Qu Wenruo wrote:
>=20
>=20
> On 2019/7/16 =E4=B8=8B=E5=8D=887:56, Jagan Teki wrote:
>> This is next revison of lpddr4 support on rk3399 compared to
>> previous set[1]. It has some changes based on the commit orders
>> and squashing few patches together and rest is same.
>>
>> Thanks to
>> - YouMin Chen
>> - Akash Gajjar
>> - Kever Yang
>> for supporting all the help on this work.
>>
>> Changes for v3:
>> - squash set_rate code in one patch
>> - tested in Rockpro64 and Rock-PI-4
>=20
> Great works! Can't wait to try them on both boards!
>=20
> Would you mind to setup a git repo for this large patchset?
> It would be much easier for other guys to test, other than fetching all=

> the patches and apply them.

In fact the patchset can't be applied to current master due to conflicts.=

And furthermore the hash doesn't match any existing tree.

Would you mind to rebase it to current master? Or at least a git repo so
I could try to rebase them.

Thanks,
Qu
>=20
> Thanks,
> Qu
>=20
>> - order them in proper way
>> - rebase on master
>> Changes for v2:
>> - handle LPDDR4 code as part of CONFIG_RAM_RK3399_LPDDR4
>> - support data_training and set_rate via sdram_rk3399_ops
>> - add proper sys_reg_enc macros
>> - add new patch to rename variable sdram_params with params
>> - fix few commit messages.
>>
>> patch 0001 - 0018: add dram config enc macro
>>
>> patch 0019: configure phy IO in ds odt
>>
>> patch 0020: add LPDDR4 config=20
>>
>> patch 0021 - 0043: lpddr4 data training changes
>>
>> patch 0044 - 0046: syscon pmu support
>>
>> patch 0047: set 50MHz ddr clock
>>
>> patch 0048: set 400MHz ddr clock
>>
>> patch 0049: LPDDR4-400 timings
>>
>> patch 0050: LPDDR4-800 timings
>>
>> patch 0051 - 0052: lpddr4 set rate
>>
>> patch 0053: enable lpddr4 support on Rockpro64
>>
>> patch 0054: enable lpddr4 support on Rock-PI 4
>>
>> patch 0055: add LPDDR-100 timings via dts
>>
>> patch 0056: use LPDDR-100 timings on Rockpro64
>>
>> patch 0057: use LPDDR-100 timings on Rock-PI 4
>>
>> [1] https://patchwork.ozlabs.org/cover/1116734/
>>
>> Any inputs?
>> Jagan.
>>
>> Jagan Teki (57):
>>   ram: rk3399: Add ddrtype enc macro
>>   ram: rk3399: Add channel number encoder macro
>>   ram: rk3399: Add row_3_4 enc macro
>>   ram: rk3399: Add chipinfo macro
>>   ram: rk3399: Add rank enc macro
>>   ram: rk3399: Add column enc macro
>>   ram: rk3399: Add bk enc macro
>>   ram: rk3399: Add dbw enc macro
>>   ram: rk3399: Add cs0_rw macro
>>   ram: rk3399: Add cs1_rw macro
>>   ram: rk3399: Add bw enc macro
>>   ram: rk3399: Rename sys_reg with sys_reg2
>>   ram: rk3399: Update cs0_row to use sys_reg3
>>   ram: rk3399: Update cs1_row to use sys_reg3
>>   ram: rk3399: Add cs1_col enc macro
>>   ram: rk3399: Add ddr version enc macro
>>   ram: rk3399: Add ddrtimingC0
>>   ram: rk3399: Add DdrMode
>>   ram: rk3399: Configure phy IO in ds odt
>>   ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
>>   ram: rk3399: Add lpddr4 rank mask for ca training
>>   ram: rk3399: Add lpddr4 rank mask for wdql training
>>   ram: rk3399: Move mode_sel assignment
>>   ram: rk3399: Don't wait for PLL lock in lpddr4
>>   ram: rk3399: Avoid two channel ZQ Cal Start at the same time
>>   ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
>>   ram: rk3399: Configure BOOSTP_EN, BOOSTN_EN for lpddr4
>>   ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
>>   ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
>>   ram: rk3399: Map chipselect for lpddr4
>>   ram: rk3399: Configure tsel write ca for lpddr4
>>   ram: rk3399: Don't disable dfi dram clk for lpddr4, rank 1
>>   ram: rk3399: Add IO settings
>>   ram: sdram: Configure lpddr4 tsel rd, wr based on IO settings
>>   ram: rk3399: Add tsel control clock drive
>>   ram: rk3399: Configure soc odt support
>>   ram: rk3399: Get lpddr4 tsel_rd_en from io settings
>>   ram: rk3399: Update lpddr4 vref based on io settings
>>   ram: rk3399: Update lpddr4 mode_sel based on io settings
>>   ram: rk3399: Update lpddr4 vref_mode_ac
>>   ram: rk3399: Simplify data training first argument
>>   ram: rk3399: Handle data training via ops
>>   ram: rk3399: Add LPPDR4 mr detection
>>   arm: include: rockchip: Add rk3399 pmu file
>>   rockchip: rk3399: syscon: Add pmu support
>>   rockchip: dts: rk3399: Add u-boot, dm-pre-reloc for pmu
>>   clk: rockchip: rk3399: Set 50MHz ddr clock
>>   clk: rockchip: rk3399: Set 400MHz ddr clock
>>   ram: rk3399: Add LPPDDR4-400 timings inc
>>   ram: rk3399: Add LPPDDR4-800 timings inc
>>   ram: rk3399: Add set_rate sdram rk3399 ops
>>   ram: rk3399: Add lpddr4 set rate support
>>   configs: rockpro64: Enable LPDDR4 support
>>   configs: rock-pi-4: Enable LPDDR4 support
>>   rockchip: dts: rk3399: Add LPDDR4-100 timings
>>   rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
>>   rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi
>>
>>  arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi     |    1 +
>>  arch/arm/dts/rk3399-rockpro64-u-boot.dtsi     |    1 +
>>  arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi     | 1537 +++++++++++++++
>>  arch/arm/dts/rk3399-u-boot.dtsi               |    4 +
>>  .../include/asm/arch-rockchip/pmu_rk3399.h    |   72 +
>>  .../include/asm/arch-rockchip/sdram_common.h  |   31 +
>>  .../include/asm/arch-rockchip/sdram_rk3399.h  |   29 +-
>>  arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |    8 +
>>  configs/rock-pi-4-rk3399_defconfig            |    1 +
>>  configs/rockpro64-rk3399_defconfig            |    1 +
>>  drivers/clk/rockchip/clk_rk3399.c             |    8 +
>>  drivers/ram/rockchip/Kconfig                  |    7 +
>>  .../ram/rockchip/sdram-rk3399-lpddr4-400.inc  | 1570 +++++++++++++++
>>  .../ram/rockchip/sdram-rk3399-lpddr4-800.inc  | 1570 +++++++++++++++
>>  drivers/ram/rockchip/sdram_rk3399.c           | 1726 ++++++++++++++--=
-
>>  15 files changed, 6317 insertions(+), 249 deletions(-)
>>  create mode 100644 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi
>>  create mode 100644 arch/arm/include/asm/arch-rockchip/pmu_rk3399.h
>>  create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-400.inc
>>  create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-800.inc
>>
>=20
>=20
> _______________________________________________
> U-Boot mailing list
> U-Boot@lists.denx.de
> https://lists.denx.de/listinfo/u-boot
>=20


--69t5cwQQpafqgp60KnIHt9rbIwZlWItQy--

--ppXMFA5jRMebkMgx7Sod1Jn4vcA5ThLIC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFLBAEBCAA1FiEELd9y5aWlW6idqkLhwj2R86El/qgFAl2ZQ8kXHHF1d2VucnVv
LmJ0cmZzQGdteC5jb20ACgkQwj2R86El/qikAwf+MXJmKO+DddL8Uq6iSbhTd21T
Jxc50Ne4nxHciVB2FcQd1CIlVBFqGLXFVb7QOcMSkvr2PghENuJq+g4IB1uSIRoV
QsCHU7IgJ16jnaGswHB/Up96PlpUBc9OLlV7psjzkl8QH4lxMMU9N0TvMMUet//Z
iKMslrh/qKMy27bI95pxz9m8Wi5MRRj1HgHmkyFDQxA6AmvSPxRMzqlD6XCJcQo0
S9ZGF2HNkKVBhkTGaX5InFCT29UIVc6UwZxWGa+b8DuobdOdIuHyNyb+vAUjzP/L
dy80/q6YSPlggKALA/d0DYYWuLxv3A3SDebC8wltZJvzYCivy7Lbo+Vnbo2gkw==
=p/Xw
-----END PGP SIGNATURE-----

--ppXMFA5jRMebkMgx7Sod1Jn4vcA5ThLIC--


--===============8215711029097188294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8215711029097188294==--

