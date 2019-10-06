Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B92CCDA8
	for <lists+linux-rockchip@lfdr.de>; Sun,  6 Oct 2019 03:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6toxH2K645oY1UfBlSKtBHFHt0KlZqzbXiheOm02BSk=; b=o6o+tis1rORi1Ct8Yq7vef7Fs
	wfAc02r599VbSCgmCeVUV/65jI2/7QoVB4pHrcCO1bjaiIulUhHZQsefsyBfiggSFXeodaymWSmrV
	4Xgqw4Z3Sq8NVDGZYpEKkF1yDyJyqasSja2cQcJmU9UO4BEcgVplCAQRh1YAo6l2aYSngrKFOB9FX
	Jg6iF8yb8FnbLiCEwlQKjiW5qbWS0dY5anhOAor/EnHc5iDEJPBoq97oRPsGbtSAHZ+yoQ+vg1KO7
	9i0a69YA2BtPiCSyiTx+gl0IILEFqsocud72F4hBHQkaWTbPC1/x89ANJhmHgMCFe5lFu4ZXkvEtM
	jsXExxCsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGv05-0003R3-86; Sun, 06 Oct 2019 01:06:17 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGv01-0003Q7-G6
 for linux-rockchip@lists.infradead.org; Sun, 06 Oct 2019 01:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570323951;
 bh=Lu5lafHYwf5FrkROeEimtp8Z48RJXtPC4gajeGuE7Sk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=aQbSf1LZMwdDno/jY1nCs3kR1+L/24wRXNjDVm0GMs5wbARyp4+aYKJcpNiNEg2+K
 IOEIIaA9qhChF+qXKBY94wze5arxVfyXGC9iHylc7Byrh/DQQ6nUgeed49dx7fN/pA
 SvqAVWFMn+gOWrP7w65shErbhV+YxmOSMaz8uLX0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [0.0.0.0] ([13.231.109.76]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MRmfo-1ifh6C3NH8-00T9yc; Sun, 06
 Oct 2019 03:05:51 +0200
Subject: Re: [U-Boot] [PATCH v3 00/57] ram: rk3399: Add LPDDR4 support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
From: Qu Wenruo <quwenruo.btrfs@gmx.com>
Message-ID: <310a4823-ce36-6152-2886-2bb6fcc0e328@gmx.com>
Date: Sun, 6 Oct 2019 09:05:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
X-Provags-ID: V03:K1:EEhS6XlJFYH6MrsL1Py+eFrr53ZwXfMd3wk7tTQQaj2wI95evX4
 Z1JlpOk3a7OYc+IHPWA7ynYQ/ylRmesIN48dDb3jQ5D+i1b+9b9jjBWAwKV65PFytCtXlUc
 3KK6snumJGL7KTOF9FZJu47t8UbtvMW6DueDpwMAUvpTZ/zn8TVSvi/QOwENmxKql9XJIIS
 HAkJGf7XYwQs7+XivoRQQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QAZRRbdCQdQ=:mfrKdYIkli6ZVFWsoOBKCm
 W+q/Ox4n1UAruXKiea6jzVql5ErIS9jn1+BqjOsP5OH8Gsj3FTh2g3YhuU/2DTQeU+H7kwNdv
 CWWJy6cKu0olepWi8ZEE4aKxq3ksV81iMqlqQjZ/lgEzKyGT1LkKQq+jTIeZRPHgRdFPX0bA1
 UR9iAsyInplad4JFtom3VrDMlKZ1QLRpfcGvpiBBuNRxuHKyjJPgm5hZLfXt/i/N/+IoHsoSS
 h3rsbpq6yXm3pyPK7R/IFnPYAs934bOb/KxKeI8DsBIhkKqxBfOSlx/NVp+eVhYOxLLE4dcHs
 4h+ft8xr8mknvTzzQENdMb+uBWuUwZRis3qnhewGN0k0Jv6H+BFe2M5KGkjdYNOe35G6s56xI
 QqFuAjp6q6e1HlYj+HMtxZYFameoZux0aY1e49vf3tbwMe7d97Cv9anBhloaF+uU0KaD3pPWM
 +SwV3gIlE/Z9OTxxmHjWVW9lgbF7PROAL3N8Gm/wtMzzuI93GzqhKjjP8k9kSjW/zQV572dFU
 WzSYqXXrsmXkV4YhXYbcjxbd+i8QLrMuEXviVNnQIJX/qwiCCesiK6YeN6oXozhNiz8Xnxiid
 uk7L+xdVp9ukvIR73b2QqjergDRakdfkpP6JttoAhaAcAeDtYH0YmN1J7GsoKTrtC99m/y8hh
 J4MlavA+x+52ZmMQVpy2+dEt5VcL2xR89AC1N8Qc/AYa+ICX5CN6MKEIqh8+/8OkxExoI9z1e
 ZweG7xqAJzMwei+8oUPrgvlb2eH/hkFWUcD+n6Ww3mWxrDSsEOcwrKKtgPMzhPbuQHvMtisC7
 4ho/5Fi6igBiMdeZjLlnyG1RXL1Bmc1DRUkZdsZVY0hOKqrp8vS57VVEVgjDmd9cPAKIzJJAv
 jZ/rCH6eik3VfHg4YGOuUPMq4A1kFObRcN6dNt838O/MRRfCF32/F28OGqgarU3NY/f2wIAJT
 ZzbrwtM2i2yCtEq7MSGOgy3CMaa5epGnOKDOCMQdCPsq65pNiTszdmanxh9aR0yFlvXK2Hja6
 f02IwM8OyfOtFdZHK4U0b4eH0XeEkUDprjSUobXSw+Eh3ixrz9UMoUoVh4gdNaEpTJSGW6Ryy
 xsNJuDmuVqHTzGi+AfeMPfisuhWNyjaGIOJgpipZLejZJAGU86KK5VMxKwX3Ho/YI0PT3p/D4
 JQ7JxbiL6m6z2gJ4BZKVbNQBDmzLiWq/VTmH7fgNpmikJGOh7hN/mUirkxg8BP3jPPkpZZG4Z
 qVGrOIak8W3vIfGK5Soo13ZWuMRTLVR86lgDjIUDT1Tic/pD+TIhIPBAYrhg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_180613_877303_1F92F5DF 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (quwenruo.btrfs[at]gmx.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, gajjar04akash@gmail.com
Content-Type: multipart/mixed; boundary="===============4742749212629692807=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4742749212629692807==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="EAeyPowDKJixi4UqNTTb91KnR1Ixr2aGv"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--EAeyPowDKJixi4UqNTTb91KnR1Ixr2aGv
Content-Type: multipart/mixed; boundary="u9IOUIqlzFyxm1JTTPhNfukiyRdquiNTV"

--u9IOUIqlzFyxm1JTTPhNfukiyRdquiNTV
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 2019/7/16 =E4=B8=8B=E5=8D=887:56, Jagan Teki wrote:
> This is next revison of lpddr4 support on rk3399 compared to
> previous set[1]. It has some changes based on the commit orders
> and squashing few patches together and rest is same.
>=20
> Thanks to
> - YouMin Chen
> - Akash Gajjar
> - Kever Yang
> for supporting all the help on this work.
>=20
> Changes for v3:
> - squash set_rate code in one patch
> - tested in Rockpro64 and Rock-PI-4

Great works! Can't wait to try them on both boards!

Would you mind to setup a git repo for this large patchset?
It would be much easier for other guys to test, other than fetching all
the patches and apply them.

Thanks,
Qu

> - order them in proper way
> - rebase on master
> Changes for v2:
> - handle LPDDR4 code as part of CONFIG_RAM_RK3399_LPDDR4
> - support data_training and set_rate via sdram_rk3399_ops
> - add proper sys_reg_enc macros
> - add new patch to rename variable sdram_params with params
> - fix few commit messages.
>=20
> patch 0001 - 0018: add dram config enc macro
>=20
> patch 0019: configure phy IO in ds odt
>=20
> patch 0020: add LPDDR4 config=20
>=20
> patch 0021 - 0043: lpddr4 data training changes
>=20
> patch 0044 - 0046: syscon pmu support
>=20
> patch 0047: set 50MHz ddr clock
>=20
> patch 0048: set 400MHz ddr clock
>=20
> patch 0049: LPDDR4-400 timings
>=20
> patch 0050: LPDDR4-800 timings
>=20
> patch 0051 - 0052: lpddr4 set rate
>=20
> patch 0053: enable lpddr4 support on Rockpro64
>=20
> patch 0054: enable lpddr4 support on Rock-PI 4
>=20
> patch 0055: add LPDDR-100 timings via dts
>=20
> patch 0056: use LPDDR-100 timings on Rockpro64
>=20
> patch 0057: use LPDDR-100 timings on Rock-PI 4
>=20
> [1] https://patchwork.ozlabs.org/cover/1116734/
>=20
> Any inputs?
> Jagan.
>=20
> Jagan Teki (57):
>   ram: rk3399: Add ddrtype enc macro
>   ram: rk3399: Add channel number encoder macro
>   ram: rk3399: Add row_3_4 enc macro
>   ram: rk3399: Add chipinfo macro
>   ram: rk3399: Add rank enc macro
>   ram: rk3399: Add column enc macro
>   ram: rk3399: Add bk enc macro
>   ram: rk3399: Add dbw enc macro
>   ram: rk3399: Add cs0_rw macro
>   ram: rk3399: Add cs1_rw macro
>   ram: rk3399: Add bw enc macro
>   ram: rk3399: Rename sys_reg with sys_reg2
>   ram: rk3399: Update cs0_row to use sys_reg3
>   ram: rk3399: Update cs1_row to use sys_reg3
>   ram: rk3399: Add cs1_col enc macro
>   ram: rk3399: Add ddr version enc macro
>   ram: rk3399: Add ddrtimingC0
>   ram: rk3399: Add DdrMode
>   ram: rk3399: Configure phy IO in ds odt
>   ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
>   ram: rk3399: Add lpddr4 rank mask for ca training
>   ram: rk3399: Add lpddr4 rank mask for wdql training
>   ram: rk3399: Move mode_sel assignment
>   ram: rk3399: Don't wait for PLL lock in lpddr4
>   ram: rk3399: Avoid two channel ZQ Cal Start at the same time
>   ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
>   ram: rk3399: Configure BOOSTP_EN, BOOSTN_EN for lpddr4
>   ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
>   ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
>   ram: rk3399: Map chipselect for lpddr4
>   ram: rk3399: Configure tsel write ca for lpddr4
>   ram: rk3399: Don't disable dfi dram clk for lpddr4, rank 1
>   ram: rk3399: Add IO settings
>   ram: sdram: Configure lpddr4 tsel rd, wr based on IO settings
>   ram: rk3399: Add tsel control clock drive
>   ram: rk3399: Configure soc odt support
>   ram: rk3399: Get lpddr4 tsel_rd_en from io settings
>   ram: rk3399: Update lpddr4 vref based on io settings
>   ram: rk3399: Update lpddr4 mode_sel based on io settings
>   ram: rk3399: Update lpddr4 vref_mode_ac
>   ram: rk3399: Simplify data training first argument
>   ram: rk3399: Handle data training via ops
>   ram: rk3399: Add LPPDR4 mr detection
>   arm: include: rockchip: Add rk3399 pmu file
>   rockchip: rk3399: syscon: Add pmu support
>   rockchip: dts: rk3399: Add u-boot, dm-pre-reloc for pmu
>   clk: rockchip: rk3399: Set 50MHz ddr clock
>   clk: rockchip: rk3399: Set 400MHz ddr clock
>   ram: rk3399: Add LPPDDR4-400 timings inc
>   ram: rk3399: Add LPPDDR4-800 timings inc
>   ram: rk3399: Add set_rate sdram rk3399 ops
>   ram: rk3399: Add lpddr4 set rate support
>   configs: rockpro64: Enable LPDDR4 support
>   configs: rock-pi-4: Enable LPDDR4 support
>   rockchip: dts: rk3399: Add LPDDR4-100 timings
>   rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
>   rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi
>=20
>  arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi     |    1 +
>  arch/arm/dts/rk3399-rockpro64-u-boot.dtsi     |    1 +
>  arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi     | 1537 +++++++++++++++
>  arch/arm/dts/rk3399-u-boot.dtsi               |    4 +
>  .../include/asm/arch-rockchip/pmu_rk3399.h    |   72 +
>  .../include/asm/arch-rockchip/sdram_common.h  |   31 +
>  .../include/asm/arch-rockchip/sdram_rk3399.h  |   29 +-
>  arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |    8 +
>  configs/rock-pi-4-rk3399_defconfig            |    1 +
>  configs/rockpro64-rk3399_defconfig            |    1 +
>  drivers/clk/rockchip/clk_rk3399.c             |    8 +
>  drivers/ram/rockchip/Kconfig                  |    7 +
>  .../ram/rockchip/sdram-rk3399-lpddr4-400.inc  | 1570 +++++++++++++++
>  .../ram/rockchip/sdram-rk3399-lpddr4-800.inc  | 1570 +++++++++++++++
>  drivers/ram/rockchip/sdram_rk3399.c           | 1726 ++++++++++++++---=

>  15 files changed, 6317 insertions(+), 249 deletions(-)
>  create mode 100644 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi
>  create mode 100644 arch/arm/include/asm/arch-rockchip/pmu_rk3399.h
>  create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-400.inc
>  create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-800.inc
>=20


--u9IOUIqlzFyxm1JTTPhNfukiyRdquiNTV--

--EAeyPowDKJixi4UqNTTb91KnR1Ixr2aGv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFLBAEBCAA1FiEELd9y5aWlW6idqkLhwj2R86El/qgFAl2ZPecXHHF1d2VucnVv
LmJ0cmZzQGdteC5jb20ACgkQwj2R86El/qjVXwf/aTaS4C1huw3OA/3/RMMU9lO2
ir8ufEWHraGd+7dNP3rq5okpzluN8pE+lFdVQGb/QJ2ZhXGyPfta/jBQZOvgI4FS
v+ASQTVmaTQqujYqRA8tAMt0YYsXZKndEAAE4ofDtI2NAEtC8jaDKGbTnxV4a4UD
AsAMAOsDJSvCL2eoQ3/TQXqxIq9mKi00WmcjsjrIII8pgnPmUWlEzcg8E/0Nf2+k
lFHN3gFiBs7a0hInN2lq0821ixwN2tPHu7Sn+VLDcteJIV3anedZqGnjN07fIlBj
004DezhGaM7Yr2bpmVRJ/6SCFnCTWMWvVpmxhW0Tg4xGsA0faQ+kU9Iktaobng==
=GtC+
-----END PGP SIGNATURE-----

--EAeyPowDKJixi4UqNTTb91KnR1Ixr2aGv--


--===============4742749212629692807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4742749212629692807==--

